"""
LLM service — uses the ontology file for context.

Three functions:
1. generate_greeting()   → init page greeting from signals + KPIs
2. resolve_component()   → Step 1: ontology + question + history → component decision ONLY
                           SQL is only generated for unknown/dynamic components
3. generate_sql()        → Step 2: only called for Track 2b (unknown component)
4. generate_answer()     → Step 3: question + history + data → ai_message + chips
"""

import json
import anthropic
from pathlib import Path
from app.core.config import settings


def _client() -> anthropic.Anthropic:
    return anthropic.Anthropic(api_key=settings.ANTHROPIC_API_KEY)


# ── Ontology Loader ───────────────────────────────────────────────────────────

def _load_ontology(client_id: str = "aramco") -> str:
    """
    Loads the ontology JSON file for the given client.
    The ontology describes the database to the LLM — entities, attributes,
    relationships, business concepts and query patterns.
    Falls back to aramco_hse.json if client-specific one not found.
    """
    ontology_path = (
        Path(__file__).parent.parent
        / "ontology"
        / f"{client_id}_hse.json"
    )
    if not ontology_path.exists():
        ontology_path = (
            Path(__file__).parent.parent
            / "ontology"
            / "aramco_hse.json"
        )
    with open(ontology_path) as f:
        ontology = json.load(f)
    return json.dumps(ontology, indent=2)


# ── Helpers ───────────────────────────────────────────────────────────────────

def _format_history(conversation_history: list[dict]) -> str:
    if not conversation_history:
        return "No prior conversation."
    lines = []
    for turn in conversation_history:
        role = "AI" if turn.get("role") == "ai" else "User"
        lines.append(f"{role}: {turn.get('text', '')}")
    return "\n".join(lines)


def _parse_llm_json(raw: str) -> dict:
    raw = raw.strip()
    if raw.startswith("```"):
        parts = raw.split("```")
        raw   = parts[1] if len(parts) > 1 else raw
        if raw.startswith("json"):
            raw = raw[4:]
    return json.loads(raw.strip())


# ── Step 1: Component Resolution ──────────────────────────────────────────────

async def resolve_component(
    question:             str,
    conversation_history: list[dict] = [],
    client_id:            str = "aramco",
) -> dict:
    """
    Step 1 — Send ontology + conversation history + question to Claude.
    Claude decides ONLY which component to use.
    NO SQL is generated here for known components.
    SQL is only generated for unknown/dynamic components (Track 2b).

    Returns:
    {
      "component": "FlaggedJobsTable | Table | Chart | null",
      "is_known_component": true | false,
      "sql": "SELECT ..." | null,   ← only populated for unknown components
      "reasoning": "why"
    }
    """
    ontology    = _load_ontology(client_id)
    history_str = _format_history(conversation_history)

    prompt = f"""You are an HSE intelligence assistant with access to a complete database ontology.

DATABASE ONTOLOGY:
{ontology}

CONVERSATION HISTORY (use this to resolve any references in the current question):
{history_str}

CURRENT QUESTION: "{question}"

Your task:
1. Read the conversation history to resolve any references in the question
   (e.g. "those seven people", "the two locations", "those permits")
2. Use the ontology common_questions section to check if this matches a known question type
3. Decide which component best answers the question

IMPORTANT RULES:
- If the question matches a known component (see common_questions in ontology):
  Set is_known_component = true
  Set sql = null  ← DO NOT generate SQL, the backend has a pre-built query
- If the question does NOT match any known component:
  Set is_known_component = false
  Generate a complete SQL query using exact table/column names from the ontology
  Use the business_concepts and relationships sections to build correct joins
  Only SELECT statements — no INSERT, UPDATE, DELETE, DROP, ALTER
  Always use table aliases, limit to 100 rows
- If the question is purely conversational (no data needed):
  Set component = null, is_known_component = false, sql = null

Respond ONLY with JSON, no markdown, no preamble:
{{
  "component": "FlaggedJobsTable | PermitDetailCard | MusterBoard | PrioritizedActionCards | AssetHealthCard | HeadcountReconciliationPanel | SiteMapPanel | Table | Chart | null",
  "is_known_component": true or false,
  "sql": null or "SELECT ...",
  "reasoning": "brief explanation"
}}"""

    client  = _client()
    message = client.messages.create(
        model=settings.LLM_MODEL,
        max_tokens=1024,
        messages=[{"role": "user", "content": prompt}]
    )

    return _parse_llm_json(message.content[0].text)


# ── Step 3: Answer Generation ─────────────────────────────────────────────────

async def generate_answer(
    question:             str,
    data:                 list | dict,
    component:            str | None,
    persona:              str = "hse-gm",
    conversation_history: list[dict] = [],
) -> tuple[str, list[str]]:
    """
    Step 3 — Send question + history + fetched data to Claude.
    Claude generates ai_message + suggested_chips from the real data.
    """
    history_str = _format_history(conversation_history)

    data_str = json.dumps(data, default=str)
    if len(data_str) > 8000:
        data_str = data_str[:8000] + "... [truncated]"

    prompt = f"""You are TrackLynk AI, an HSE intelligence assistant for an Aramco site during a turnaround day.
You are speaking to the {persona.upper().replace('-', ' ')}.

CONVERSATION HISTORY:
{history_str}

CURRENT QUESTION: "{question}"

DATA RETRIEVED FROM DATABASE:
{data_str}

Your task:
1. Use the conversation history to understand the full context of the question.
2. Answer the current question in 2-3 sentences using ONLY the data provided above.
   Reference specific numbers, names, zones and details from the data.
   Do NOT make up or infer data that is not in the result.
   If data is empty, say so clearly.
3. Suggest exactly 3 specific follow-up questions based on what the data shows
   and the conversation so far. Reference actual values from the data.
   Do NOT suggest generic questions.

Respond ONLY with JSON, no markdown, no preamble:
{{
  "ai_message": "your answer here",
  "suggested_chips": [
    "specific follow-up question 1",
    "specific follow-up question 2",
    "specific follow-up question 3"
  ]
}}"""

    client  = _client()
    message = client.messages.create(
        model=settings.LLM_MODEL,
        max_tokens=1024,
        messages=[{"role": "user", "content": prompt}]
    )

    result          = _parse_llm_json(message.content[0].text)
    ai_message      = result.get("ai_message", "Here is the information you requested.")
    suggested_chips = result.get("suggested_chips", [])

    return ai_message, suggested_chips


# ── Greeting ──────────────────────────────────────────────────────────────────

async def generate_greeting(
    signals:   list,
    kpis:      list,
    persona:   str = "hse-gm",
    client_id: str = "aramco",
) -> tuple[str, list[str]]:
    """
    Generates the init page greeting from signals + KPIs.
    Only top 3 signals passed. Result cached in query_cache.
    """
    top_signals    = signals[:3]
    kpi_summary    = {k["id"]: k["value"] for k in kpis}
    signal_summary = [
        {
            "title":    s["title"],
            "severity": s["severity"],
            "impact":   s["impact"],
            "action":   s["recommended_action"],
        }
        for s in top_signals
    ]

    prompt = f"""You are TrackLynk AI, an HSE intelligence assistant for an Aramco site during a turnaround day.
You are briefing the {persona.upper().replace('-', ' ')}.

CURRENT LIVE SITE STATUS:

KPIs:
- Active permits today: {kpi_summary.get('active_permits', 'N/A')}
- High-risk permits: {kpi_summary.get('high_risk_permits', 'N/A')}
- People on site: {kpi_summary.get('people_on_site', 'N/A')}
- Jobs in hazard zone without valid permit: {kpi_summary.get('jobs_without_permit', 'N/A')}
- Overdue safety actions: {kpi_summary.get('overdue_actions', 'N/A')}
- Muster completion time (last drill): {kpi_summary.get('muster_time', 'N/A')}
- Near misses this month: {kpi_summary.get('near_misses', 'N/A')}
- Total recordable case rate: {kpi_summary.get('trcr', 'N/A')}

Top 3 Priority Signals right now:
{json.dumps(signal_summary, indent=2)}

Your tasks:
1. Write a concise 2-3 sentence greeting summarizing what is happening on site
   right now during this turnaround. Reference actual numbers from the KPIs.
   Highlight the most critical issues from the signals.
2. Suggest exactly 3 follow-up questions specific to the actual data above.
   Every question must reference something specific from the KPIs or signals.
   Do NOT suggest generic questions.

Respond ONLY with JSON, no markdown, no preamble:
{{
  "ai_message": "your greeting here",
  "suggested_chips": [
    "specific question 1",
    "specific question 2",
    "specific question 3"
  ]
}}"""

    client  = _client()
    message = client.messages.create(
        model=settings.LLM_MODEL,
        max_tokens=2048,
        messages=[{"role": "user", "content": prompt}]
    )

    result          = _parse_llm_json(message.content[0].text)
    ai_message      = result.get("ai_message", "Welcome. Here is your site summary.")
    suggested_chips = result.get("suggested_chips", [])

    return ai_message, suggested_chips