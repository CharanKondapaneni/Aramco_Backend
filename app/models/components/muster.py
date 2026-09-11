"""
MusterBoard + MusterLocationMap component data model.
Mapped from: muster_event + muster_point tables.
"""

from pydantic import BaseModel


class MusterControl(BaseModel):
    status:               str   # running | complete
    mustered:             int
    mustering:            int
    not_started:          int
    gate_movements_in:    int
    gate_movements_out:   int
    lockdown_note:        str | None = None
    duration_label:       str


class MusterZone(BaseModel):
    id:           str
    name:         str
    accounted:    int
    expected:     int
    capacity:     int
    covers_zones: list[str]


class UnaccountedGroup(BaseModel):
    id:                str
    count:             int
    label:             str
    last_known:        str
    priority:          str   # high | medium | low
    detail:            str
    last_known_point:  list[float]   # [lng, lat]


class Projection(BaseModel):
    full_accounting_minutes: int
    basis:                   str
    confidence:              int


class MeasuredCompletion(BaseModel):
    label:      str
    seconds:    int
    target:     str
    basis:      str
    prior_drill: str
    note:       str


class MusterData(BaseModel):
    as_of:               str
    freshness:           str
    state:               str   # drill | emergency | complete | standby
    state_label:         str
    elapsed_seconds:     int
    accounted:           int
    total:               int
    unaccounted:         int
    control:             MusterControl
    zones:               list[MusterZone]
    unaccounted_groups:  list[UnaccountedGroup]
    projection:          Projection
    measured_completion: MeasuredCompletion
