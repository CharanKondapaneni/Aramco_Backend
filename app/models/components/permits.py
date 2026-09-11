"""
PermitDetailCard + IndoorViewer + EvidenceTrustPanel component data model.
Mapped from: permit + permit_condition + gas_test_reading +
             permit_entrant + permit_entry_exit_log tables.
"""

from pydantic import BaseModel


class PermitCondition(BaseModel):
    id:        str
    label:     str
    state:     str   # compliant | attention | breached
    detail:    str
    sources:   list[str]
    freshness: str


class Occupancy(BaseModel):
    inside: int
    max:    int


class GasTestReading(BaseModel):
    time:   str
    result: str


class GasTest(BaseModel):
    last_test_minutes_ago: int
    interval_minutes:      int
    due_in_minutes:        int
    last_reading:          str
    readings:              list[GasTestReading]


class Standby(BaseModel):
    role:          str
    state:         str   # confirmed | unconfirmed
    confirmed_by:  list[str]


class Entrant(BaseModel):
    id:          str
    label:       str
    company:     str
    entered_at:  str
    is_inside:   bool


class EntryExitEvent(BaseModel):
    time:              str
    actor:             str
    event_description: str
    note:              str | None = None


class RelatedPermit(BaseModel):
    id:             str
    permit_type:    str
    zone_name:      str
    status:         str
    valid_to:       str
    risk_bucket:    str
    flagged_job_id: str | None = None


class ConfinedSpace(BaseModel):
    id:                   str
    permit_type:          str
    title:                str
    zone_id:              str
    zone_name:            str
    location_description: str
    status:               str
    risk_bucket:          str
    valid_from:           str
    valid_to:             str
    issuer:               str
    work_order_id:        str
    conditions:           list[PermitCondition]
    occupancy:            Occupancy
    gas_test:             GasTest
    standby:              Standby
    entrants:             list[Entrant]
    entry_exit_log:       list[EntryExitEvent]


class PermitsData(BaseModel):
    as_of:           str
    freshness:       str
    confined_space:  ConfinedSpace
    related_permits: list[RelatedPermit]
