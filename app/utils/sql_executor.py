"""
SQL execution utility.
Validates and executes Claude-generated SQL against the live DB.
Safety: only SELECT statements allowed.
"""

import asyncpg


DANGEROUS_KEYWORDS = [
    "DROP", "DELETE", "UPDATE", "INSERT", "TRUNCATE",
    "ALTER", "CREATE", "GRANT", "REVOKE", "EXECUTE",
    "CALL", "COPY", "VACUUM", "ANALYZE"
]


def is_safe_sql(sql: str) -> bool:
    """Only SELECT statements are allowed."""
    if not sql or not sql.strip():
        return False
    sql_upper = sql.strip().upper()
    if not sql_upper.startswith("SELECT"):
        return False
    return not any(kw in sql_upper for kw in DANGEROUS_KEYWORDS)


def unescape_sql(sql: str) -> str:
    """
    SQL stored in the query_cache uses '' to escape apostrophes
    (standard SQL escaping for INSERT statements).
    When executing the SQL directly via asyncpg, PostgreSQL expects
    single quotes ' not double single quotes ''.
    This function converts '' back to ' for direct execution.
    """
    return sql.replace("''", "'")


async def execute_sql(
    pool: asyncpg.Pool,
    sql:  str,
) -> list[dict]:
    """
    Validates and executes a SELECT SQL query from the cache.
    Unescapes '' -> ' before execution since cached SQL uses
    SQL-standard double-quote escaping.
    """
    if not is_safe_sql(sql):
        raise ValueError(f"Unsafe SQL rejected: {sql[:100]}")

    # Unescape SQL-standard '' back to ' for direct asyncpg execution
    sql_clean = unescape_sql(sql)

    async with pool.acquire() as conn:
        rows = await conn.fetch(sql_clean)

    return [dict(r) for r in rows]


def build_generic_table(rows: list[dict]) -> dict:
    """
    Builds a generic Table component data shape from raw SQL rows.
    """
    if not rows:
        return {"columns": [], "rows": [], "total": 0}

    columns = list(rows[0].keys())
    data_rows = [
        [str(v) if v is not None else None for v in row.values()]
        for row in rows
    ]

    return {
        "columns": columns,
        "rows":    data_rows,
        "total":   len(data_rows),
    }