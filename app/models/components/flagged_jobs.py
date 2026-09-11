"""
FlaggedJobsTable component data model.
Mapped from: flagged_job + zone tables.
"""

from pydantic import BaseModel
from typing import Any


class PermitRecord(BaseModel):
    id:                   str
    type:                 str
    issued_at:            str
    valid_to:             str
    extension_requested:  bool
    issuer:               str
    status:               str   # expired | valid | suspended


class LocationTrailItem(BaseModel):
    time:  str
    event: str


class TimeStamps(BaseModel):
    permit_expiry:        str
    minutes_past_expiry:  int
    last_location_fix:    str


class Evidence(BaseModel):
    permit_record:   PermitRecord
    location_trail:  list[LocationTrailItem]
    time_stamps:     TimeStamps


class FlaggedJob(BaseModel):
    id:               str
    rank:             int
    permit_id:        str
    permit_type:      str
    title:            str
    zone_id:          str
    zone_name:        str
    location:         str
    bucket:           str   # safety | compliance | equipment | health
    severity:         str   # critical | warning | info
    workers_on_site:  int
    reason:           str
    detected_at:      str
    evidence:         Evidence


class FlaggedJobsData(BaseModel):
    as_of:        str
    freshness:    str
    flagged_jobs: list[FlaggedJob]
