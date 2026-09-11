"""
AssetHealthCard component data model.
Mapped from: asset + asset_reading tables.
"""

from pydantic import BaseModel


class RemainingUsefulLife(BaseModel):
    value:      float
    unit:       str   # days | months
    confidence: int
    basis:      str


class NextService(BaseModel):
    due:    str
    type:   str
    window: str


class AssetReading(BaseModel):
    reading_type_id:       str
    label:                 str
    current_value:         str
    unit:                  str
    state:                 str   # complaint | attention | alarm
    threshold_description: str
    series:                list[float]
    source_system:         str


class Asset(BaseModel):
    id:                       str
    tag:                      str
    name:                     str
    zone_id:                  str
    zone_name:                str
    asset_type:               str
    criticality:              str   # high | medium | low
    health_score:             int
    health_band:              str   # healthy | watch | degraded | critical
    alarm_state:              str   # complaint | attention | alarm
    alarm_label:              str
    trend:                    str   # worsening | stable | improving
    trend_note:               str
    remaining_useful_life:    RemainingUsefulLife
    next_service:             NextService
    hse_implication:          str
    linked_permits:           int
    linked_high_risk_permits: int
    readings:                 list[AssetReading]


class AssetsData(BaseModel):
    as_of:    str
    freshness: str
    featured:  str | None = None
    fleet:     bool = False
    assets:    list[Asset]
