"""
Persona context headers — injected into every request.
X-Market-Id, X-Client-Id, X-Persona-Id, X-Site-Id are required on all endpoints.
These tell the backend which data, ontology and flows to use.
"""

from fastapi import Header, HTTPException
from dataclasses import dataclass


@dataclass
class PersonaContext:
    market_id:  str
    client_id:  str
    persona_id: str
    site_id:    str


async def get_persona_context(
    x_market_id:  str = Header(..., description="Market identifier e.g. oil-gas"),
    x_client_id:  str = Header(..., description="Client identifier e.g. aramco"),
    x_persona_id: str = Header(..., description="Persona identifier e.g. hse-gm"),
    x_site_id:    str = Header(..., description="Site identifier e.g. aramco-site-001"),
) -> PersonaContext:
    """
    Validates and returns persona context from request headers.
    Injected as a FastAPI dependency into every endpoint.
    """
    # Basic validation — extend with DB lookup when auth is wired
    if not all([x_market_id, x_client_id, x_persona_id, x_site_id]):
        raise HTTPException(status_code=400, detail="Missing required persona context headers")

    return PersonaContext(
        market_id=x_market_id,
        client_id=x_client_id,
        persona_id=x_persona_id,
        site_id=x_site_id,
    )
