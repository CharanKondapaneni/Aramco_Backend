#!/usr/bin/env python3
"""
TrackLynk Database Export Tool
Connects to the live DB and generates SQL scripts to replicate it exactly.

Usage:
    python3 export_db.py --host localhost --port 5432 --user admin --password admin --db tracklynk_demo

Output:
    ./db_export/01_schema.sql
    ./db_export/02_zone.sql
    ./db_export/03_permit.sql
    ./db_export/04_permit_condition.sql
    ./db_export/05_gas_test_reading.sql
    ./db_export/06_permit_entrant.sql
    ./db_export/07_permit_entry_exit_log.sql
    ./db_export/08_flagged_job.sql
    ./db_export/09_worker.sql
    ./db_export/10_muster_event.sql
    ./db_export/11_muster_point.sql
    ./db_export/12_signal.sql
    ./db_export/13_action.sql
    ./db_export/14_asset.sql
    ./db_export/15_asset_reading.sql
    ./db_export/16_reconciliation_run.sql
    ./db_export/17_reconciliation_source.sql
    ./db_export/18_data_source.sql
    ./db_export/19_query_cache.sql
"""

import argparse
import json
import os
import sys
from datetime import datetime, date
from decimal import Decimal
from pathlib import Path

try:
    import psycopg2
    import psycopg2.extras
except ImportError:
    print("ERROR: psycopg2 not installed. Run: pip install psycopg2-binary")
    sys.exit(1)


# ── Table export order (respects FK dependencies) ─────────────────────────────
TABLE_ORDER = [
    "zone",
    "permit",
    "permit_condition",
    "gas_test_reading",
    "permit_entrant",
    "permit_entry_exit_log",
    "flagged_job",
    "worker",
    "muster_event",
    "muster_point",
    "signal",
    "action",
    "asset",
    "asset_reading",
    "reconciliation_run",
    "reconciliation_source",
    "data_source",
    "query_cache",
]

# Drop order is reverse of create order
DROP_ORDER = list(reversed(TABLE_ORDER))


# ── Value escaping ─────────────────────────────────────────────────────────────

def esc(val, col_type=None):
    """Escape a Python value for use in a SQL INSERT statement."""
    if val is None:
        return "NULL"

    if isinstance(val, bool):
        return "TRUE" if val else "FALSE"

    if isinstance(val, int):
        return str(val)

    if isinstance(val, float):
        return str(val)

    if isinstance(val, Decimal):
        return str(val)

    if isinstance(val, datetime):
        return f"'{val.isoformat()}'"

    if isinstance(val, date):
        return f"'{val.isoformat()}'"

    if isinstance(val, (dict, list)):
        return "'" + json.dumps(val, default=str).replace("'", "''") + "'"

    # String
    return "'" + str(val).replace("'", "''") + "'"


# ── Schema generation ──────────────────────────────────────────────────────────

def get_schema(conn) -> str:
    """
    Generates CREATE TABLE statements by reading pg_catalog.
    Includes columns, types, nullability, defaults, PKs, FKs and indexes.
    """
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    lines = []
    lines.append("-- ============================================================")
    lines.append("-- TrackLynk Database Schema")
    lines.append(f"-- Generated: {datetime.now().isoformat()}")
    lines.append("-- ============================================================")
    lines.append("")
    lines.append("-- Enable UUID extension")
    lines.append("CREATE EXTENSION IF NOT EXISTS pgcrypto;")
    lines.append("")

    # Drop tables in reverse order
    lines.append("-- Drop existing tables (reverse FK order)")
    for tbl in DROP_ORDER:
        lines.append(f"DROP TABLE IF EXISTS {tbl} CASCADE;")
    lines.append("")

    for tbl in TABLE_ORDER:
        lines.append(f"-- ── {tbl} {'─' * (50 - len(tbl))}")
        lines.append(f"CREATE TABLE {tbl} (")

        # Get columns
        cur.execute("""
            SELECT
                c.column_name,
                c.data_type,
                c.udt_name,
                c.character_maximum_length,
                c.is_nullable,
                c.column_default,
                c.numeric_precision,
                c.numeric_scale
            FROM information_schema.columns c
            WHERE c.table_schema = 'public'
            AND c.table_name = %s
            ORDER BY c.ordinal_position
        """, (tbl,))
        columns = cur.fetchall()

        # Get primary key columns
        cur.execute("""
            SELECT kcu.column_name
            FROM information_schema.table_constraints tc
            JOIN information_schema.key_column_usage kcu
                ON tc.constraint_name = kcu.constraint_name
                AND tc.table_schema = kcu.table_schema
            WHERE tc.constraint_type = 'PRIMARY KEY'
            AND tc.table_schema = 'public'
            AND tc.table_name = %s
            ORDER BY kcu.ordinal_position
        """, (tbl,))
        pk_cols = [r[0] for r in cur.fetchall()]

        # Get check constraints
        cur.execute("""
            SELECT cc.constraint_name, cc.check_clause
            FROM information_schema.table_constraints tc
            JOIN information_schema.check_constraints cc
                ON tc.constraint_name = cc.constraint_name
            WHERE tc.table_schema = 'public'
            AND tc.table_name = %s
            AND tc.constraint_type = 'CHECK'
        """, (tbl,))
        checks = {r[0]: r[1] for r in cur.fetchall()}

        # Get foreign keys
        cur.execute("""
            SELECT
                kcu.column_name,
                ccu.table_name AS foreign_table,
                ccu.column_name AS foreign_column,
                tc.constraint_name,
                rc.update_rule,
                rc.delete_rule
            FROM information_schema.table_constraints tc
            JOIN information_schema.key_column_usage kcu
                ON tc.constraint_name = kcu.constraint_name
            JOIN information_schema.constraint_column_usage ccu
                ON tc.constraint_name = ccu.constraint_name
            JOIN information_schema.referential_constraints rc
                ON tc.constraint_name = rc.constraint_name
            WHERE tc.constraint_type = 'FOREIGN KEY'
            AND tc.table_schema = 'public'
            AND tc.table_name = %s
        """, (tbl,))
        fks = {r[0]: r for r in cur.fetchall()}

        col_defs = []
        for col in columns:
            name    = col["column_name"]
            dtype   = col["udt_name"]
            notnull = col["is_nullable"] == "NO"
            default = col["column_default"]

            # Map type
            if dtype == "uuid":
                sql_type = "UUID"
            elif dtype == "text":
                sql_type = "TEXT"
            elif dtype == "int4":
                sql_type = "INTEGER"
            elif dtype == "int8":
                sql_type = "BIGINT"
            elif dtype == "float8":
                sql_type = "DOUBLE PRECISION"
            elif dtype in ("numeric", "decimal"):
                sql_type = "NUMERIC"
            elif dtype == "bool":
                sql_type = "BOOLEAN"
            elif dtype == "timestamptz":
                sql_type = "TIMESTAMPTZ"
            elif dtype == "date":
                sql_type = "DATE"
            elif dtype == "jsonb":
                sql_type = "JSONB"
            elif dtype == "json":
                sql_type = "JSON"
            else:
                sql_type = dtype.upper()

            col_def = f"    {name} {sql_type}"

            if notnull:
                col_def += " NOT NULL"

            if default:
                # Clean up default
                d = default
                d = d.replace("nextval(", "").replace("::regclass)", "")
                d = d.replace("'::text", "'").replace("::uuid", "")
                col_def += f" DEFAULT {d}"

            col_defs.append(col_def)

        # Primary key
        if pk_cols:
            col_defs.append(f"    PRIMARY KEY ({', '.join(pk_cols)})")

        # Foreign keys
        for col_name, fk in fks.items():
            col_defs.append(
                f"    FOREIGN KEY ({col_name}) REFERENCES {fk['foreign_table']}({fk['foreign_column']})"
            )

        lines.append(",\n".join(col_defs))
        lines.append(");")
        lines.append("")

    # Indexes
    lines.append("-- ── Indexes ─────────────────────────────────────────────────")
    cur.execute("""
        SELECT indexname, tablename, indexdef
        FROM pg_indexes
        WHERE schemaname = 'public'
        AND indexname NOT LIKE '%_pkey'
        ORDER BY tablename, indexname
    """)
    for row in cur.fetchall():
        lines.append(f"{row['indexdef']};")

    cur.close()
    return "\n".join(lines)


# ── Table data export ──────────────────────────────────────────────────────────

def export_table(conn, table_name: str, file_num: int) -> str:
    """
    Exports all rows from a table as INSERT statements.
    Returns the SQL string.
    """
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    # Get column names and types
    cur.execute("""
        SELECT column_name, udt_name
        FROM information_schema.columns
        WHERE table_schema = 'public'
        AND table_name = %s
        ORDER BY ordinal_position
    """, (table_name,))
    col_info = cur.fetchall()
    col_names = [c[0] for c in col_info]

    # Fetch all rows
    cur.execute(f"SELECT * FROM {table_name} ORDER BY 1")
    rows = cur.fetchall()

    lines = []
    lines.append("-- ============================================================")
    lines.append(f"-- Table: {table_name}")
    lines.append(f"-- Rows:  {len(rows)}")
    lines.append(f"-- Generated: {datetime.now().isoformat()}")
    lines.append("-- ============================================================")
    lines.append("")
    lines.append(f"-- Clear existing data")
    lines.append(f"DELETE FROM {table_name};")
    lines.append("")

    if not rows:
        lines.append(f"-- No data in {table_name}")
        cur.close()
        return "\n".join(lines)

    col_list = ", ".join(col_names)
    lines.append(f"-- {len(rows)} rows")

    # Special handling for circular FK: permit.flagged_job_id → flagged_job.id
    # Insert permits without flagged_job_id first, then update after flagged_job is loaded
    skip_cols = set()
    deferred_updates = []

    if table_name == "permit" and "flagged_job_id" in col_names:
        skip_cols.add("flagged_job_id")
        # Collect update statements to append at end
        for row in rows:
            if row["flagged_job_id"] is not None:
                deferred_updates.append(
                    f"UPDATE permit SET flagged_job_id = {esc(row['flagged_job_id'])} WHERE id = {esc(row['id'])};"
                )

    # Build INSERT statements
    insert_cols = [c for c in col_names if c not in skip_cols]
    col_list = ", ".join(insert_cols)

    for row in rows:
        values = ", ".join(esc(row[col]) for col in insert_cols)
        lines.append(f"INSERT INTO {table_name} ({col_list}) VALUES ({values});")

    # Append deferred FK updates
    if deferred_updates:
        lines.append("")
        lines.append("-- Update circular FK after flagged_job is loaded")
        lines.append("-- Run these AFTER 08_flagged_job.sql")
        lines.extend(deferred_updates)

    cur.close()
    return "\n".join(lines)


# ── Main ───────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="TrackLynk DB Export Tool")
    parser.add_argument("--host",     default="localhost",      help="DB host")
    parser.add_argument("--port",     default=5432, type=int,   help="DB port")
    parser.add_argument("--user",     default="admin",          help="DB username")
    parser.add_argument("--password", default="admin",          help="DB password")
    parser.add_argument("--db",       default="tracklynk_demo", help="DB name")
    parser.add_argument("--output",   default="./db_export",    help="Output directory")
    args = parser.parse_args()

    print(f"Connecting to {args.host}:{args.port}/{args.db} as {args.user}...")

    try:
        conn = psycopg2.connect(
            host=args.host,
            port=args.port,
            user=args.user,
            password=args.password,
            dbname=args.db
        )
    except Exception as e:
        print(f"ERROR: Could not connect to database: {e}")
        sys.exit(1)

    print("Connected successfully.")

    # Create output directory
    out_dir = Path(args.output)
    out_dir.mkdir(parents=True, exist_ok=True)
    print(f"Output directory: {out_dir.resolve()}")

    # ── 1. Schema ──────────────────────────────────────────────
    print("\nGenerating schema...")
    schema_sql = get_schema(conn)
    schema_file = out_dir / "01_schema.sql"
    schema_file.write_text(schema_sql)
    print(f"  ✓ {schema_file.name}")

    # ── 2. Table data ──────────────────────────────────────────
    print("\nExporting table data...")
    for i, table in enumerate(TABLE_ORDER, start=2):
        print(f"  Exporting {table}...", end=" ")
        sql = export_table(conn, table, i)
        filename = out_dir / f"{i:02d}_{table}.sql"
        filename.write_text(sql)
        row_count = sql.count("\nINSERT INTO")
        print(f"✓ {row_count} rows → {filename.name}")

    conn.close()

    # ── 3. Summary ─────────────────────────────────────────────
    print(f"\n{'='*50}")
    print(f"Export complete!")
    print(f"Output: {out_dir.resolve()}")
    print(f"\nTo restore on a fresh database:")
    print(f"  psql -U {args.user} -d <new_db> -f {out_dir}/01_schema.sql")
    for i, table in enumerate(TABLE_ORDER, start=2):
        print(f"  psql -U {args.user} -d <new_db> -f {out_dir}/{i:02d}_{table}.sql")
    print(f"{'='*50}")


if __name__ == "__main__":
    main()
