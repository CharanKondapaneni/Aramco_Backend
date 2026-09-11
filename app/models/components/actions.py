"""
PrioritizedActionCards component data model.
Mapped from: action table.
"""

from pydantic import BaseModel


class Action(BaseModel):
    id:            str
    rank:          int
    title:         str
    risk_bucket:   str   # safety | health | compliance | equipment
    priority:      str   # highest | high | medium | low
    rationale:     str
    owner:         str
    owner_note:    str | None = None
    due_by:        str
    evidence:      list[str]
    sources:       list[str]
    draft_task:    str | None = None
    target_system: str | None = None
    status:        str   # pending_confirmation | confirmed | done
    buttons:       list[str]


class ActionsData(BaseModel):
    as_of:    str
    freshness: str
    horizon:  str
    actions:  list[Action]
