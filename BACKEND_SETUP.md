# TrackLynk AI Backend — Local Setup Guide

This guide walks you through setting up the TrackLynk AI FastAPI backend on your local machine.
It assumes no prior experience with Python, FastAPI or backend development.

---

## What You Will Set Up

- A FastAPI backend server running on `http://localhost:8000`
- Swagger UI at `http://localhost:8000/swagger` to test all APIs
- Connection to your local or hosted PostgreSQL database
- Anthropic Claude integration for AI-powered chat responses
- All 10 API endpoints for the 4 Aramco personas

---

## Prerequisites Overview

| Tool | Minimum Version | Purpose |
|---|---|---|
| Python | 3.12 | Runtime |
| pip | 24+ | Package installer |
| PostgreSQL | 14+ | Database (must be set up first — see DATABASE_SETUP.md) |
| Anthropic API Key | — | Powers the AI chat responses |
| Git | Any | Optional — for version control |

---

## Part 1 — Install Python

### Check if Python is already installed

```bash
python3 --version
```

You need **Python 3.12**. If you see `Python 3.12.x` you are good. If not, install it:

### Mac

```bash
# Install Homebrew if you don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Python 3.12
brew install python@3.12

# Verify
python3.12 --version
```

### Windows

1. Go to https://www.python.org/downloads/
2. Download **Python 3.12.x** (the latest 3.12 release)
3. Run the installer
4. **Important:** Check the box that says **"Add Python to PATH"** before clicking Install
5. Verify in Command Prompt:
   ```
   python --version
   ```

### Linux (Ubuntu / Debian)

```bash
sudo apt update
sudo apt install python3.12 python3.12-venv python3.12-pip -y

# Verify
python3.12 --version
```

---

## Part 2 — Get the Project Files

Place the TrackLynk backend project folder on your Desktop or any convenient location.
The folder structure should look like this:

```
Aramco_Backend/
├── app/
│   ├── main.py
│   ├── core/
│   │   ├── config.py
│   │   └── headers.py
│   ├── routers/
│   │   ├── ask.py
│   │   ├── site.py
│   │   ├── permits.py
│   │   ├── muster.py
│   │   └── datasources.py
│   ├── models/
│   │   ├── response.py
│   │   ├── ask.py
│   │   └── components/
│   │       ├── flagged_jobs.py
│   │       ├── muster.py
│   │       ├── permits.py
│   │       ├── reconciliation.py
│   │       ├── actions.py
│   │       └── assets.py
│   ├── services/
│   │   ├── llm_service.py
│   │   └── cache_service.py
│   ├── db/
│   │   ├── connection.py
│   │   ├── queries.py
│   │   └── cache.py
│   ├── utils/
│   │   ├── response_builder.py
│   │   ├── transformers.py
│   │   ├── intent_map.py
│   │   └── sql_executor.py
│   └── ontology/
│       └── aramco_hse.json
├── requirements.txt
├── .env.example
└── .env              ← you will create this in Part 4
```

Navigate to the project folder in your terminal:

```bash
cd ~/Desktop/Aramco_Backend      # Mac/Linux
cd C:\Users\YourName\Desktop\Aramco_Backend   # Windows
```

---

## Part 3 — Create a Virtual Environment

A virtual environment keeps the project dependencies isolated from the rest of your system.
This is important — always use a virtual environment for Python projects.

### Create the virtual environment

```bash
python3.12 -m venv venv
```

This creates a folder called `venv` inside your project.

### Activate the virtual environment

**Mac / Linux:**
```bash
source venv/bin/activate
```

**Windows (Command Prompt):**
```bash
venv\Scripts\activate.bat
```

**Windows (PowerShell):**
```bash
venv\Scripts\Activate.ps1
```

You will know it worked when you see `(venv)` at the start of your terminal prompt:

```
(venv) charansaikondapaneni@MacBook-Air Aramco_Backend %
```

> **Important:** Every time you open a new terminal window, you must activate the virtual environment again before running any commands.

---

## Part 4 — Install Dependencies

With the virtual environment activated, install all required libraries:

```bash
pip install -r requirements.txt
```

This will install the following packages:

| Package | Version | Purpose |
|---|---|---|
| `fastapi` | 0.115.0 | The web framework — handles HTTP requests and routing |
| `uvicorn[standard]` | 0.30.6 | The server that runs FastAPI |
| `asyncpg` | 0.29.0 | Async PostgreSQL driver — connects to the database |
| `pydantic` | 2.9.2 | Data validation — ensures API inputs/outputs are correct |
| `pydantic-settings` | 2.5.2 | Loads configuration from the `.env` file |
| `anthropic` | 0.34.2 | Anthropic Claude API client — powers the AI chat |
| `python-dotenv` | 1.0.1 | Reads the `.env` file |
| `httpx` | 0.27.2 | HTTP client for making external requests |
| `psycopg2-binary` | — | PostgreSQL driver (used by test/export scripts) |

The installation takes 1-3 minutes. You will see output like:

```
Collecting fastapi==0.115.0
  Downloading fastapi-0.115.0-py3-none-any.whl
...
Successfully installed fastapi-0.115.0 uvicorn-0.30.6 asyncpg-0.29.0 ...
```

### Verify installation

```bash
python -c "import fastapi, asyncpg, anthropic; print('All packages installed successfully')"
```

You should see:
```
All packages installed successfully
```

---

## Part 5 — Configure Environment Variables

The backend reads all sensitive configuration (database credentials, API keys) from a `.env` file.
This file is never committed to version control — it stays only on your machine.

### Create the .env file

Copy the example file:

```bash
cp .env.example .env
```

Now open `.env` in any text editor (VS Code, TextEdit, Notepad) and fill in your values:

```bash
# Mac/Linux — open with VS Code
code .env

# Mac — open with TextEdit
open -e .env

# Windows — open with Notepad
notepad .env
```

### Complete .env file reference

Below is every environment variable the backend uses, with explanations:

```dotenv
# ── Application ───────────────────────────────────────────────
# Environment: development | production
APP_ENV=development

# Enable debug logging (set to false in production)
DEBUG=true

# ── Database ──────────────────────────────────────────────────
# PostgreSQL connection string
# Format: postgresql://USERNAME:PASSWORD@HOST:PORT/DATABASE_NAME
#
# Local database:
DATABASE_URL=postgresql://admin:admin@localhost:5432/tracklynk_demo
#
# Hosted database (Supabase example):
# DATABASE_URL=postgresql://postgres:yourpassword@db.supabase.co:5432/tracklynk_demo
#
# Hosted database (Neon example):
# DATABASE_URL=postgresql://username:password@ep-xyz.us-east-1.aws.neon.tech:5432/tracklynk_demo

# ── LLM (AI) Configuration ────────────────────────────────────
# Which AI provider to use: anthropic | openai
LLM_PROVIDER=anthropic

# Which model to use
# Anthropic options: claude-sonnet-4-6, claude-opus-4-6
# OpenAI options: gpt-4o, gpt-4-turbo
LLM_MODEL=claude-sonnet-4-6

# Your Anthropic API key
# Get it from: https://console.anthropic.com/
# It starts with: sk-ant-api03-...
ANTHROPIC_API_KEY=sk-ant-api03-your-key-here

# Your OpenAI API key (only needed if LLM_PROVIDER=openai)
# Get it from: https://platform.openai.com/api-keys
# It starts with: sk-...
OPENAI_API_KEY=

# ── CORS (Cross-Origin Resource Sharing) ──────────────────────
# List of frontend URLs allowed to call this backend
# Add your frontend URL here
# For local development, these defaults work fine
ALLOWED_ORIGINS=["http://localhost:5173","http://localhost:3000","http://localhost:8080"]

# ── Cache TTL (Time To Live in seconds) ───────────────────────
# How long each type of data is cached before re-fetching from DB
# You generally do not need to change these
CACHE_TTL_FLAGGED_JOBS=30
CACHE_TTL_MUSTER=5
CACHE_TTL_PERMITS=60
CACHE_TTL_ASSETS=300
CACHE_TTL_SIGNALS=300
CACHE_TTL_KPIS=30
CACHE_TTL_DATASOURCES=3600
CACHE_TTL_SITE_GEO=3600
CACHE_TTL_WORKERS=10
```

### Getting your Anthropic API Key

1. Go to https://console.anthropic.com/
2. Sign up or log in
3. Click **API Keys** in the left sidebar
4. Click **Create Key**
5. Give it a name like `tracklynk-local`
6. Copy the key — it looks like `sk-ant-api03-xxxxxxxxxxxxx`
7. Paste it into your `.env` file as `ANTHROPIC_API_KEY=sk-ant-api03-xxxxxxxxxxxxx`

> **Security:** Never share your `.env` file or commit it to Git. It contains your private API key and database credentials.

### Verify your .env file

After filling in all values, your `.env` file should look something like this:

```dotenv
APP_ENV=development
DEBUG=true
DATABASE_URL=postgresql://admin:admin@localhost:5432/tracklynk_demo
LLM_PROVIDER=anthropic
LLM_MODEL=claude-sonnet-4-6
ANTHROPIC_API_KEY=sk-ant-api03-abc123xyz...
OPENAI_API_KEY=
ALLOWED_ORIGINS=["http://localhost:5173","http://localhost:3000"]
CACHE_TTL_FLAGGED_JOBS=30
CACHE_TTL_MUSTER=5
CACHE_TTL_PERMITS=60
CACHE_TTL_ASSETS=300
CACHE_TTL_SIGNALS=300
CACHE_TTL_KPIS=30
CACHE_TTL_DATASOURCES=3600
CACHE_TTL_SITE_GEO=3600
CACHE_TTL_WORKERS=10
```

---

## Part 6 — Verify Database Connection

Before starting the server, confirm the backend can reach the database.
Run this quick check:

```bash
python3 -c "
import asyncio
import asyncpg

async def check():
    try:
        conn = await asyncpg.connect('postgresql://admin:admin@localhost:5432/tracklynk_demo')
        version = await conn.fetchval('SELECT version()')
        count = await conn.fetchval('SELECT COUNT(*) FROM worker')
        await conn.close()
        print(f'Connected successfully')
        print(f'PostgreSQL: {version[:50]}')
        print(f'Workers in DB: {count}')
    except Exception as e:
        print(f'Connection failed: {e}')

asyncio.run(check())
"
```

Expected output:
```
Connected successfully
PostgreSQL: PostgreSQL 14.x on x86_64-apple-darwin...
Workers in DB: 2412
```

If you see `Connection failed` — check that:
1. PostgreSQL is running (`brew services start postgresql@14` on Mac)
2. The database exists (`psql -U admin -d tracklynk_demo -c "\dt"`)
3. The `DATABASE_URL` in your `.env` has the correct credentials

---

## Part 7 — Start the Backend Server

With everything configured, start the server:

```bash
uvicorn app.main:app --reload --port 8000
```

What each part means:
- `app.main:app` — load the FastAPI app from `app/main.py`
- `--reload` — automatically restart when you change code (development only)
- `--port 8000` — run on port 8000

You should see:

```
INFO:     Will watch for changes in these directories: ['/Users/.../Aramco_Backend']
INFO:     Uvicorn running on http://127.0.0.1:8000 (Press CTRL+C to quit)
INFO:     Started reloader process [12345] using WatchFiles
INFO:     Started server process [12346]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
```

The server is now running. Leave this terminal window open.

---

## Part 8 — Test the APIs in Swagger

Open your browser and go to:

```
http://localhost:8000/swagger
```

You will see the Swagger UI — an interactive interface to test all API endpoints.

### How to use Swagger

Every API requires these 4 headers. In Swagger, click the **Authorize** button (top right) or add them to each request:

| Header | Value |
|---|---|
| `X-Market-Id` | `oil-gas` |
| `X-Client-Id` | `aramco` |
| `X-Persona-Id` | `hse-gm` |
| `X-Site-Id` | `aramco-site-001` |

### Test 1 — Health check (no headers needed)

Click `GET /health` → **Try it out** → **Execute**

Expected response:
```json
{
  "status": "ok",
  "service": "tracklynk-api"
}
```

### Test 2 — Ask page init

Click `GET /api/ask/init` → **Try it out**

Add the headers above, then click **Execute**.

This will:
1. Fetch signals and KPIs from your database
2. Call the Anthropic API to generate the greeting message
3. Return signals, KPIs and the AI greeting

Expected response (abbreviated):
```json
{
  "meta": { "persona_id": "hse-gm", ... },
  "ai_message": "The site is at turnaround load...",
  "suggested_chips": ["Show the three flagged jobs", ...],
  "data": {
    "signals": [...],
    "kpis": [...]
  }
}
```

### Test 3 — Chat question

Click `POST /api/ask` → **Try it out**

Add headers and use this request body:

```json
{
  "question": "Show the three flagged jobs",
  "conversation_history": []
}
```

Expected response: flagged jobs table data with an AI-generated message.

### Available personas to test

Change `X-Persona-Id` to test different personas:

| Persona ID | Role |
|---|---|
| `hse-gm` | General Manager, Health Safety & Environment |
| `shift-supervisor` | Shift Supervisor (Units 2 & 3) |
| `permit-issuer` | Permit Issuer |
| `complex-manager` | Complex Manager (Site VP) |

---

## Part 9 — Available API Endpoints

| Method | Endpoint | Page | AI |
|---|---|---|---|
| `GET` | `/api/ask/init` | Ask TrackLynk — page load | Yes |
| `POST` | `/api/ask` | Ask TrackLynk — chat | Yes |
| `GET` | `/api/site/operational` | Live Site Picture — zones + flagged jobs | No |
| `GET` | `/api/site/geo` | Live Site Picture — map GeoJSON | No |
| `GET` | `/api/site/workers` | Live Site Picture — worker positions | No |
| `GET` | `/api/permits` | Permit and Job Detail | No |
| `GET` | `/api/indoor-geo` | Permit and Job Detail — floor plan | No |
| `GET` | `/api/reconciliation` | Permit and Job Detail — headcount | No |
| `GET` | `/api/muster` | Muster Status | No |
| `GET` | `/api/datasources` | Data Sources | No |
| `GET` | `/health` | Health check | No |

---

## Part 10 — Project Structure Explained

```
Aramco_Backend/
│
├── app/
│   ├── main.py                  ← Entry point. Registers all routers.
│   │                               Opens DB connection pool on startup.
│   │
│   ├── core/
│   │   ├── config.py            ← Reads all settings from .env file.
│   │   └── headers.py           ← Validates X-Market-Id, X-Client-Id,
│   │                               X-Persona-Id, X-Site-Id headers.
│   │
│   ├── routers/                 ← One file per page/feature.
│   │   ├── ask.py               ← GET /ask/init and POST /ask
│   │   ├── site.py              ← GET /site/operational, /geo, /workers
│   │   ├── permits.py           ← GET /permits, /indoor-geo, /reconciliation
│   │   ├── muster.py            ← GET /muster
│   │   └── datasources.py       ← GET /datasources
│   │
│   ├── models/                  ← Data shapes (what goes in and out of APIs).
│   │   ├── response.py          ← The standard envelope every API returns.
│   │   ├── ask.py               ← Request shape for POST /ask.
│   │   └── components/          ← Data shapes per visualization component.
│   │
│   ├── services/
│   │   ├── llm_service.py       ← Calls Anthropic Claude API.
│   │                               Loads the ontology file.
│   │                               Generates SQL, answers and greetings.
│   │   └── cache_service.py     ← In-memory cache (Phase 1).
│   │
│   ├── db/
│   │   ├── connection.py        ← Creates and manages the asyncpg
│   │   │                           connection pool to PostgreSQL.
│   │   ├── queries.py           ← All SQL queries. One function per endpoint.
│   │   │                           Phase 1: reads live DB.
│   │   └── cache.py             ← Reads and writes the query_cache table.
│   │
│   ├── utils/
│   │   ├── response_builder.py  ← build_response() — called by every router.
│   │   │                           Wraps data in the standard envelope.
│   │   ├── transformers.py      ← Shapes raw DB rows into component data.
│   │   ├── intent_map.py        ← Maps question intent to components
│   │   │                           (Phase 1 keyword matching, Phase 2 KAG).
│   │   └── sql_executor.py      ← Safely executes Claude-generated SQL.
│   │                               SELECT-only validation.
│   │
│   └── ontology/
│       └── aramco_hse.json      ← Database ontology passed to Claude.
│                                   Describes tables, columns, relationships
│                                   and business concepts in plain language.
│
├── requirements.txt             ← Python package list.
├── .env.example                 ← Template for .env file.
└── .env                        ← Your local config (never commit this).
```

---

## Common Commands Reference

```bash
# Activate virtual environment (run this every time you open a new terminal)
source venv/bin/activate                          # Mac/Linux
venv\Scripts\activate                             # Windows

# Start the server
uvicorn app.main:app --reload --port 8000

# Start on a different port (if 8000 is in use)
uvicorn app.main:app --reload --port 8001

# Install a new package
pip install package-name
pip freeze > requirements.txt                     # update requirements.txt

# Deactivate virtual environment
deactivate

# Check what is running on port 8000 (Mac/Linux)
lsof -i :8000

# Kill process on port 8000 (Mac/Linux)
kill -9 $(lsof -t -i :8000)
```

---

## Troubleshooting

### `uvicorn: command not found`

The virtual environment is not activated. Run:
```bash
source venv/bin/activate      # Mac/Linux
venv\Scripts\activate         # Windows
```

### `ModuleNotFoundError: No module named 'fastapi'`

Packages are not installed in the active environment. Run:
```bash
pip install -r requirements.txt
```

### `Cannot connect to host localhost:5432`

PostgreSQL is not running. Start it:
```bash
brew services start postgresql@14       # Mac
sudo systemctl start postgresql         # Linux
```
On Windows, search for **Services** in the Start menu and start **PostgreSQL**.

### `anthropic.AuthenticationError`

Your Anthropic API key is wrong or missing. Check:
1. The key in `.env` starts with `sk-ant-api03-`
2. There are no spaces around the `=` sign
3. The key has not been revoked at https://console.anthropic.com/

### `500 Internal Server Error` on `/api/ask/init`

Usually a database issue. Check the terminal where uvicorn is running for the full error message. Common causes:
- Database not set up (run the DB scripts from DATABASE_SETUP.md)
- Wrong `DATABASE_URL` in `.env`
- PostgreSQL not running

### `No module named 'app'`

You are running uvicorn from the wrong directory. Make sure you are inside the `Aramco_Backend` folder:
```bash
cd ~/Desktop/Aramco_Backend
uvicorn app.main:app --reload --port 8000
```

### Port 8000 already in use

```bash
# Find and kill the process (Mac/Linux)
kill -9 $(lsof -t -i :8000)

# Or use a different port
uvicorn app.main:app --reload --port 8001
```

### Changes to code not reflected

Make sure `--reload` is included in the uvicorn command. With `--reload`, the server restarts automatically when you save a file.

---

## Environment Variables — Quick Reference

| Variable | Required | Default | Description |
|---|---|---|---|
| `APP_ENV` | No | `development` | Environment name |
| `DEBUG` | No | `true` | Enable debug logging |
| `DATABASE_URL` | **Yes** | — | PostgreSQL connection string |
| `LLM_PROVIDER` | No | `anthropic` | AI provider: `anthropic` or `openai` |
| `LLM_MODEL` | No | `claude-sonnet-4-6` | Model name |
| `ANTHROPIC_API_KEY` | **Yes** | — | Your Anthropic API key |
| `OPENAI_API_KEY` | No | — | Your OpenAI API key (if using OpenAI) |
| `ALLOWED_ORIGINS` | No | `["http://localhost:5173"]` | Frontend URLs for CORS |
| `CACHE_TTL_FLAGGED_JOBS` | No | `30` | Seconds to cache flagged jobs |
| `CACHE_TTL_MUSTER` | No | `5` | Seconds to cache muster data |
| `CACHE_TTL_PERMITS` | No | `60` | Seconds to cache permit data |
| `CACHE_TTL_ASSETS` | No | `300` | Seconds to cache asset data |
| `CACHE_TTL_SIGNALS` | No | `300` | Seconds to cache signals |
| `CACHE_TTL_KPIS` | No | `30` | Seconds to cache KPIs |
| `CACHE_TTL_DATASOURCES` | No | `3600` | Seconds to cache data sources |
| `CACHE_TTL_SITE_GEO` | No | `3600` | Seconds to cache site GeoJSON |
| `CACHE_TTL_WORKERS` | No | `10` | Seconds to cache worker positions |

---

## Summary — Everything in Order

```
1.  Install Python 3.12
2.  Place project files in Aramco_Backend/
3.  cd ~/Desktop/Aramco_Backend
4.  python3.12 -m venv venv
5.  source venv/bin/activate          (Mac/Linux)
    venv\Scripts\activate             (Windows)
6.  pip install -r requirements.txt
7.  cp .env.example .env
8.  Edit .env — fill in DATABASE_URL and ANTHROPIC_API_KEY
9.  Verify DB connection (optional quick check)
10. uvicorn app.main:app --reload --port 8000
11. Open http://localhost:8000/swagger
12. Test GET /health — should return {"status": "ok"}
13. Test GET /api/ask/init with headers
```

If step 12 returns `{"status": "ok"}` and step 13 returns signals and KPIs — the backend is fully operational.
