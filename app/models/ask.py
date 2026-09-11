"""
Request models for the Ask TrackLynk endpoints.
"""

from pydantic import BaseModel


class ConversationTurn(BaseModel):
    role: str   # user | ai
    text: str


class AskRequest(BaseModel):
    question:             str
    conversation_history: list[ConversationTurn] = []


class ConversationTurnDict(BaseModel):
    """Used internally when passing history to LLM service."""
    role: str
    text: str