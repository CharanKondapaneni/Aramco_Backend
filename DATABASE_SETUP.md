# TrackLynk Demo Database — Setup Guide

This guide walks you through setting up the TrackLynk demo database from scratch.
It covers local setup and hosted setup (cloud), and assumes no prior experience.

---

## What You Will Set Up

- A PostgreSQL database called `tracklynk_demo`
- 18 tables covering zones, permits, workers, flagged jobs, muster, signals, actions, assets, reconciliation and query cache
- ~2,500 rows of demo data including 2,412 workers, permits, signals and pre-seeded chat questions
- A validation script to confirm everything is correct

---

## Prerequisites

### 1. Python 3.10 or higher

Check if you have Python installed:

```bash
python3 --version
```

If not installed:

- **Mac:** `brew install python@3.12`
- **Windows:** Download from https://www.python.org/downloads/
- **Linux (Ubuntu/Debian):** `sudo apt install python3 python3-pip`

### 2. PostgreSQL 14 or higher

**Option A — Local installation:**

- **Mac:** `brew install postgresql@14` then `brew services start postgresql@14`
- **Windows:** Download from https://www.postgresql.org/download/windows/
- **Linux (Ubuntu/Debian):**
  ```bash
  sudo apt install postgresql postgresql-contrib
  sudo systemctl start postgresql
  ```

**Option B — Hosted (cloud):**

Use any of these cloud providers — all work the same way:

| Provider | Free Tier | URL |
|---|---|---|
| Supabase | Yes (500MB) | https://supabase.com |
| Neon | Yes (512MB) | https://neon.tech |
| Railway | Yes (1GB) | https://railway.app |
| Amazon RDS | 12 months free | https://aws.amazon.com/rds |
| ElephantSQL | Yes (20MB) | https://www.elephantsql.com |

After creating a cloud database, you will get a connection string like:
```
postgresql://username:password@host:5432/database_name
```
Keep this handy — you will need the individual parts (host, port, user, password, dbname) in later steps.

### 3. Python Libraries

Install the required Python library:

```bash
pip install psycopg2-binary
```

If you get a permissions error on Mac/Linux:

```bash
pip3 install psycopg2-binary
```

Or inside a virtual environment (recommended):

```bash
python3 -m venv venv
source venv/bin/activate        # Mac/Linux
venv\Scripts\activate           # Windows
pip install psycopg2-binary
```

---

## Step 1 — Create the Database

### Local PostgreSQL

Connect to PostgreSQL as the default admin user and create the database:

```bash
psql -U postgres
```

Inside the psql shell, run:

```sql
CREATE USER admin WITH PASSWORD 'admin';
CREATE DATABASE tracklynk_demo OWNER admin;
GRANT ALL PRIVILEGES ON DATABASE tracklynk_demo TO admin;
\q
```

Verify you can connect:

```bash
psql -U admin -d tracklynk_demo -c "SELECT version();"
```

You should see the PostgreSQL version printed. If so, the database is ready.

### Hosted / Cloud PostgreSQL

Most cloud providers create the database for you via their dashboard. You just need to:

1. Log in to your cloud provider
2. Create a new database (usually a button called **New Database** or **Create Project**)
3. Name it `tracklynk_demo`
4. Note down the connection details:
   - **Host** — e.g. `db.supabase.co` or `ep-xyz.us-east-1.aws.neon.tech`
   - **Port** — usually `5432`
   - **Username** — e.g. `postgres` or `admin`
   - **Password** — the one you set during creation
   - **Database name** — `tracklynk_demo` or whatever you named it

---

## Step 2 — Download the Scripts

You need the following files. Place them all in the same folder on your computer — for example a folder called `tracklynk_db`:

```
tracklynk_db/
├── 01_schema.sql
├── 02_zone.sql
├── 03_permit.sql
├── 04_permit_condition.sql
├── 05_gas_test_reading.sql
├── 06_permit_entrant.sql
├── 07_permit_entry_exit_log.sql
├── 08_flagged_job.sql
├── 09_worker.sql
├── 10_muster_event.sql
├── 11_muster_point.sql
├── 12_signal.sql
├── 13_action.sql
├── 14_asset.sql
├── 15_asset_reading.sql
├── 16_reconciliation_run.sql
├── 17_reconciliation_source.sql
├── 18_data_source.sql
├── 19_query_cache.sql
├── export_db.py
└── test_db.py
```

Navigate to that folder in your terminal:

```bash
cd ~/Desktop/tracklynk_db      # Mac/Linux
cd C:\Users\YourName\tracklynk_db   # Windows
```

---

## Step 3 — Run the Scripts in Order

The scripts **must be run in numbered order** because later tables depend on earlier ones (foreign key relationships).

### Option A — Run them one by one (recommended for first time)

Replace `admin`, `tracklynk_demo` with your actual username and database name if different:

```bash
psql -U admin -d tracklynk_demo -f 01_schema.sql
psql -U admin -d tracklynk_demo -f 02_zone.sql
psql -U admin -d tracklynk_demo -f 03_permit.sql
psql -U admin -d tracklynk_demo -f 04_permit_condition.sql
psql -U admin -d tracklynk_demo -f 05_gas_test_reading.sql
psql -U admin -d tracklynk_demo -f 06_permit_entrant.sql
psql -U admin -d tracklynk_demo -f 07_permit_entry_exit_log.sql
psql -U admin -d tracklynk_demo -f 08_flagged_job.sql
psql -U admin -d tracklynk_demo -f 09_worker.sql
psql -U admin -d tracklynk_demo -f 10_muster_event.sql
psql -U admin -d tracklynk_demo -f 11_muster_point.sql
psql -U admin -d tracklynk_demo -f 12_signal.sql
psql -U admin -d tracklynk_demo -f 13_action.sql
psql -U admin -d tracklynk_demo -f 14_asset.sql
psql -U admin -d tracklynk_demo -f 15_asset_reading.sql
psql -U admin -d tracklynk_demo -f 16_reconciliation_run.sql
psql -U admin -d tracklynk_demo -f 17_reconciliation_source.sql
psql -U admin -d tracklynk_demo -f 18_data_source.sql
psql -U admin -d tracklynk_demo -f 19_query_cache.sql
```

### Option B — Run them all at once (Mac/Linux only)

```bash
for f in $(ls *.sql | sort); do
    echo "Running $f..."
    psql -U admin -d tracklynk_demo -f $f
done
```

### For Hosted / Cloud Databases

If your database is hosted (Supabase, Neon, RDS etc.), add the host flag:

```bash
psql -h your-host.com -U admin -d tracklynk_demo -f 01_schema.sql
```

You will be prompted for the password each time. To avoid this, set the environment variable:

```bash
export PGPASSWORD=your_password     # Mac/Linux
set PGPASSWORD=your_password        # Windows
```

Then run the scripts as above without being prompted.

### What each script does

| Script | Table | Rows (approx) |
|---|---|---|
| `01_schema.sql` | Creates all 18 tables | — |
| `02_zone.sql` | Site zones | ~11 |
| `03_permit.sql` | Work permits | ~20+ |
| `04_permit_condition.sql` | Permit safety conditions | ~10+ |
| `05_gas_test_reading.sql` | Gas test readings | ~5+ |
| `06_permit_entrant.sql` | People inside confined spaces | ~5+ |
| `07_permit_entry_exit_log.sql` | Entry/exit event log | ~10+ |
| `08_flagged_job.sql` | Safety violations | ~3 |
| `09_worker.sql` | Workers on site | 2,412 |
| `10_muster_event.sql` | Muster drill event | ~1 |
| `11_muster_point.sql` | Assembly points | ~5 |
| `12_signal.sql` | AI priority signals | ~20+ |
| `13_action.sql` | Prioritized actions | ~5+ |
| `14_asset.sql` | Equipment/assets | ~5+ |
| `15_asset_reading.sql` | Sensor readings | ~20+ |
| `16_reconciliation_run.sql` | Headcount reconciliation | ~1 |
| `17_reconciliation_source.sql` | Reconciliation sources | ~3 |
| `18_data_source.sql` | Connected data systems | ~8 |
| `19_query_cache.sql` | Pre-seeded chat questions | ~56 |

> **Note:** The `09_worker.sql` script contains 2,412 rows and will take 1-2 minutes to run. This is normal.

---

## Step 4 — Verify the Setup

### Quick check via psql

Connect to the database and run a quick sanity check:

```bash
psql -U admin -d tracklynk_demo
```

Inside the psql shell:

```sql
-- Check all tables exist
\dt

-- Check row counts
SELECT 'zone' as table_name, COUNT(*) FROM zone
UNION ALL SELECT 'permit', COUNT(*) FROM permit
UNION ALL SELECT 'worker', COUNT(*) FROM worker
UNION ALL SELECT 'flagged_job', COUNT(*) FROM flagged_job
UNION ALL SELECT 'signal', COUNT(*) FROM signal
UNION ALL SELECT 'action', COUNT(*) FROM action
UNION ALL SELECT 'asset', COUNT(*) FROM asset
UNION ALL SELECT 'muster_event', COUNT(*) FROM muster_event
UNION ALL SELECT 'query_cache', COUNT(*) FROM query_cache
ORDER BY table_name;
```

Expected output:

```
 table_name   | count
--------------+-------
 action       |     5
 asset        |     3
 flagged_job  |     3
 muster_event |     1
 permit       |    20
 query_cache  |    56
 signal       |    20
 worker       |  2412
 zone         |    11
```

Exit psql:

```sql
\q
```

### Full validation via Python script

Run the comprehensive test suite — this checks 80+ conditions including data integrity, relationships and business rules:

```bash
python3 test_db.py \
  --host localhost \
  --port 5432 \
  --user admin \
  --password admin \
  --db tracklynk_demo
```

For a hosted database:

```bash
python3 test_db.py \
  --host your-host.com \
  --port 5432 \
  --user your_username \
  --password your_password \
  --db tracklynk_demo
```

A successful run looks like:

```
============================================================
  TrackLynk Database Validation Suite
  localhost:5432/tracklynk_demo
  2026-09-10 18:00:00
============================================================

────────────────────────────────────────────────────────────
  1. SCHEMA — Table existence
────────────────────────────────────────────────────────────
  ✓ Table exists: zone
  ✓ Table exists: permit
  ✓ Table exists: worker
  ... (all 18 tables)

════════════════════════════════════════════════════════════
  Results: 82/82 tests passed
  All tests passed ✓
════════════════════════════════════════════════════════════
```

If any test fails it will show:

```
  ✗ Exactly 2412 workers
      Expected: 2412
      Actual:   0
```

---

## Step 5 — Exporting the Database (Optional)

If you want to create fresh export scripts from a live database (for backup or migration):

```bash
python3 export_db.py \
  --host localhost \
  --port 5432 \
  --user admin \
  --password admin \
  --db tracklynk_demo \
  --output ./db_export
```

This generates a fresh set of SQL scripts from the live database. Run them on any new PostgreSQL instance to replicate it exactly.

---

## Troubleshooting

### `psql: command not found`

PostgreSQL client tools are not in your PATH.

- **Mac:** Run `export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"` then try again
- **Windows:** Add `C:\Program Files\PostgreSQL\14\bin` to your system PATH
- **Linux:** Run `sudo apt install postgresql-client`

### `FATAL: password authentication failed`

The username or password is wrong. Double-check the credentials you used when creating the database.

### `FATAL: database "tracklynk_demo" does not exist`

You haven't created the database yet. Go back to Step 1.

### `ERROR: relation "zone" does not exist`

You ran a data script before the schema script. Run `01_schema.sql` first, then re-run all scripts in order.

### `ERROR: duplicate key value violates unique constraint`

You are running the scripts on a database that already has data. The scripts clear existing data with `DELETE FROM table_name` before inserting. If you see this error it usually means `01_schema.sql` was not run — run it first to start clean.

### Slow performance on `09_worker.sql`

This is normal — 2,412 INSERT statements take 1-2 minutes. Let it run.

### Cloud database connection refused

Make sure:
1. Your IP address is whitelisted in the cloud provider firewall/security group
2. SSL is enabled if required — add `?sslmode=require` to your connection string
3. The port (usually 5432) is open

---

## Connection String Reference

| Parameter | Local default | Example cloud value |
|---|---|---|
| `--host` | `localhost` | `db.supabase.co` |
| `--port` | `5432` | `5432` |
| `--user` | `admin` | `postgres` |
| `--password` | `admin` | `your_secure_password` |
| `--db` | `tracklynk_demo` | `tracklynk_demo` |

---

## Summary

```
1. Install Python 3.10+  and  PostgreSQL 14+
2. pip install psycopg2-binary
3. Create the database (local or cloud)
4. Run scripts 01 through 19 in order
5. Run test_db.py to verify
```

If all 82 tests pass — your database is ready.
