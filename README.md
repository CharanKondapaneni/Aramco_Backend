# TrackLynk AI — FastAPI Backend

## Project Structure

```
tracklynk_api/
├── app/
│   ├── main.py                      # FastAPI app entry point
│   ├── core/
│   │   ├── config.py                # Settings from environment
│   │   └── headers.py               # Persona context headers dependency
│   ├── routers/
│   │   ├── ask.py                   # GET /ask/init + POST /ask
│   │   ├── site.py                  # GET /site/operational + /geo + /workers
│   │   ├── permits.py               # GET /permits + /indoor-geo + /reconciliation
│   │   ├── muster.py                # GET /muster
│   │   └── datasources.py           # GET /datasources
│   ├── models/
│   │   ├── response.py              # Standard TrackLynkResponse envelope
│   │   ├── ask.py                   # AskRequest model
│   │   └── components/              # Component data models
│   │       ├── flagged_jobs.py
│   │       ├── muster.py
│   │       ├── permits.py
│   │       ├── reconciliation.py
│   │       ├── actions.py
│   │       └── assets.py
│   ├── services/
│   │   ├── llm_service.py           # LLM integration (Phase 2)
│   │   └── cache_service.py         # Query cache (in-memory → Redis)
│   ├── db/
│   │   ├── connection.py            # Async SQLAlchemy setup
│   │   └── queries.py               # All DB query functions
│   ├── utils/
│   │   ├── response_builder.py      # build_response() utility
│   │   ├── transformers.py          # Raw DB → component data shape
│   │   └── intent_map.py            # Intent lookup table (mock KAG)
│   └── data/
│       └── aramco/
│           └── hse-gm/              # JSON fixtures (Phase 1)
└── tests/
```

## Required Headers

Every endpoint requires these headers:

| Header | Example | Description |
|--------|---------|-------------|
| `Authorization` | `Bearer {token}` | Auth token |
| `X-Market-Id` | `oil-gas` | Market identifier |
| `X-Client-Id` | `aramco` | Client identifier |
| `X-Persona-Id` | `hse-gm` | Persona identifier |
| `X-Site-Id` | `aramco-site-001` | Site identifier |

## Running Locally

```bash
# Install dependencies
pip install -r requirements.txt

# Copy env file
cp .env.example .env

# Run the server
uvicorn app.main:app --reload --port 8000

# Open Swagger
open http://localhost:8000/swagger
```

## API Endpoints

| Page | Method | Endpoint | AI |
|------|--------|----------|----|
| Ask TrackLynk | GET | `/api/ask/init` | Yes |
| Ask TrackLynk | POST | `/api/ask` | Yes |
| Live Site Picture | GET | `/api/site/operational` | No |
| Live Site Picture | GET | `/api/site/geo` | No |
| Live Site Picture | GET | `/api/site/workers` | No |
| Permit and Job Detail | GET | `/api/permits` | No |
| Permit and Job Detail | GET | `/api/indoor-geo` | No |
| Permit and Job Detail | GET | `/api/reconciliation` | No |
| Muster Status | GET | `/api/muster` | No |
| Data Sources | GET | `/api/datasources` | No |

## Phase Roadmap

- **Phase 1 (now):** JSON fixtures + keyword intent matching + chatFlows.json LLM mock
- **Phase 2:** Real DB queries (PostgreSQL) + KAG ontology traversal + real LLM (Anthropic)
- **Phase 3:** Redis cache + WebSocket for live worker positions + streaming SSE for /ask
```
