"""
HeadcountReconciliationPanel + EvidenceTrustPanel component data model.
Mapped from: reconciliation_run + reconciliation_source tables.
"""

from pydantic import BaseModel


class ReconciliationSource(BaseModel):
    id:           str
    source_name:  str
    record_count: int
    delta:        int
    reliability:  str
    note:         str | None = None


class TrustedFigure(BaseModel):
    label:       str
    value:       str
    source:      str
    freshness:   str
    reconciled:  bool


class ExceptionGroup(BaseModel):
    id:         str
    count:      int
    label:      str
    priority:   str   # high | medium | low
    last_known: str


class ReconciliationData(BaseModel):
    as_of:           str
    freshness:       str
    resolved_count:  int
    resolved_label:  str
    method:          str
    audit_logged:    bool
    sources:         list[ReconciliationSource]
    exceptions:      list[ExceptionGroup]
    trusted_figures: list[TrustedFigure]
