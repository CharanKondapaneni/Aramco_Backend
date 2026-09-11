# TrackLynk UI — Backend Integration Guide

This guide explains how to connect the TrackLynk frontend (React/Vite) to the
TrackLynk FastAPI backend you have already set up.

Currently the frontend reads data from static JSON files. After this integration
it will read live data from the backend APIs.

---

## Prerequisites

Before starting this guide:

- ✅ Database is set up and running (see `DATABASE_SETUP.md`)
- ✅ Backend is running on `http://localhost:8000` (see `BACKEND_SETUP.md`)
- ✅ `GET http://localhost:8000/health` returns `{"status": "ok"}`

---

## Part 1 — Set Up the Frontend

### 1.1 — Install Node.js

The frontend requires **Node.js 22.12 or higher**.

Check if you have it:

```bash
node --version
```

If not installed or the version is below 22:

**Mac:**
```bash
brew install node@22
```

**Windows:**
Download from https://nodejs.org/ — choose the **LTS** version (22.x).

**Linux (Ubuntu/Debian):**
```bash
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs
```

Verify:
```bash
node --version    # should say v22.x.x
npm --version     # should say 10.x.x
```

### 1.2 — Install frontend dependencies

Navigate to the frontend project folder and install:

```bash
cd ~/Desktop/tracklynk

npm install
```

This installs all packages listed in `package.json` — React, Vite, MapLibre,
Tailwind, Framer Motion, Three.js etc. Takes 1-3 minutes.

### 1.3 — Create the frontend .env file

```bash
cp .env.example .env
```

The frontend only needs one environment variable — the access token for the demo gate:

```dotenv
VITE_POC_ACCESS_KEY=rdvr@9705
```

The default value (`rdvr@9705`) works without changing anything.

### 1.4 — Start the frontend dev server

```bash
npm run dev
```

You should see:

```
  VITE v8.x.x  ready in 800ms

  ➜  Local:   http://localhost:5700/
  ➜  Network: http://192.168.x.x:5700/
```

Open `http://localhost:5700` in your browser. You should see the TrackLynk login screen.

> **Note:** The frontend runs on port `5700` by default (not the usual `3000`).
> This is intentional — set in `vite.config.js`.

---

## Part 2 — Understanding How Data Flows Today

Before making any changes, it helps to understand how the frontend currently works.

### The data seam — `src/data/aramco/hse-gm/index.js`

Every piece of data the frontend shows comes through getter functions in this file:

```javascript
// Currently — reads from static JSON files
export async function getMuster() {
  return muster;          // ← returns imported muster.json
}

export async function getSiteData() {
  return siteData;        // ← returns imported siteData.json
}

export async function getPermits() {
  return permits;         // ← returns imported permits.json
}

// ... and so on for every data type
```

### The hook — `src/hooks/useAsyncData.js`

Every screen calls these getters through the `useAsyncData` hook:

```javascript
// In MusterStatus.jsx
const muster = useAsyncData(getMuster);

// In LiveSitePicture.jsx
const site = useAsyncData(getSiteData);

// In PermitJobDetail.jsx
const permits = useAsyncData(getPermits);
```

`useAsyncData` calls the getter, waits for the result, and returns the data.
The screen then passes the data into components as props.

### Why this matters for integration

The comment at the top of `index.js` says it exactly:

> *"The ONLY seam between the views and the data. Every accessor is async and
> returns a frozen fixture today; pointing one at a live endpoint later is a
> change here and nowhere else."*

**The entire backend integration happens in one file: `src/data/aramco/hse-gm/index.js`**

The screens, components and hooks do not change at all.

---

## Part 3 — Create the API Client

First, create a shared API client that handles headers and error handling.

Create a new file at `src/lib/apiClient.js`:

```javascript
/**
 * TrackLynk API Client
 * Handles all HTTP requests to the FastAPI backend.
 * All requests include the required persona context headers.
 */

const BASE_URL = import.meta.env.VITE_API_BASE_URL || 'http://localhost:8000';

/**
 * Default headers sent with every request.
 * These tell the backend which persona is active.
 *
 * In production these will come from the auth session.
 * For now they are set from environment variables.
 */
function getHeaders() {
  return {
    'Content-Type':  'application/json',
    'X-Market-Id':   import.meta.env.VITE_MARKET_ID   || 'oil-gas',
    'X-Client-Id':   import.meta.env.VITE_CLIENT_ID   || 'aramco',
    'X-Persona-Id':  import.meta.env.VITE_PERSONA_ID  || 'hse-gm',
    'X-Site-Id':     import.meta.env.VITE_SITE_ID     || 'aramco-site-001',
  };
}

/**
 * GET request to the backend.
 * @param {string} path - API path e.g. '/api/muster'
 * @param {object} params - Optional query params e.g. { scope: 'permit' }
 */
export async function apiGet(path, params = {}) {
  const url = new URL(`${BASE_URL}${path}`);
  Object.entries(params).forEach(([k, v]) => url.searchParams.set(k, v));

  const response = await fetch(url.toString(), {
    method:  'GET',
    headers: getHeaders(),
  });

  if (!response.ok) {
    throw new Error(`API error ${response.status} on GET ${path}`);
  }

  return response.json();
}

/**
 * POST request to the backend.
 * @param {string} path - API path e.g. '/api/ask'
 * @param {object} body - Request body
 */
export async function apiPost(path, body = {}) {
  const response = await fetch(`${BASE_URL}${path}`, {
    method:  'POST',
    headers: getHeaders(),
    body:    JSON.stringify(body),
  });

  if (!response.ok) {
    throw new Error(`API error ${response.status} on POST ${path}`);
  }

  return response.json();
}
```

---

## Part 4 — Add Environment Variables to the Frontend .env

Open `tracklynk/.env` and add the backend connection variables:

```dotenv
# Demo gate access token (already here)
VITE_POC_ACCESS_KEY=rdvr@9705

# ── Backend API ───────────────────────────────────────────────────────────────
# URL of the FastAPI backend
# Local development:
VITE_API_BASE_URL=http://localhost:8000

# ── Persona Context ───────────────────────────────────────────────────────────
# These are sent as headers with every API request.
# Change VITE_PERSONA_ID to switch which persona's data is loaded.
VITE_MARKET_ID=oil-gas
VITE_CLIENT_ID=aramco
VITE_PERSONA_ID=hse-gm
VITE_SITE_ID=aramco-site-001
```

> **Persona IDs:** Change `VITE_PERSONA_ID` to test different personas:
> - `hse-gm` — General Manager HSE
> - `shift-supervisor` — Shift Supervisor
> - `permit-issuer` — Permit Issuer
> - `complex-manager` — Complex Manager

---

## Part 5 — Replace the Data Getters

This is the core of the integration. Open `src/data/aramco/hse-gm/index.js`
and replace the static JSON imports with live API calls.

Replace the **entire file** with the following:

```javascript
/**
 * TrackLynk.AI — HSE GM data accessors — LIVE API VERSION
 *
 * Each getter now calls the FastAPI backend instead of returning a static JSON.
 * The shape returned by each getter is identical to what the JSON fixtures returned,
 * so all screens and components work without any changes.
 *
 * The backend response envelope is:
 * {
 *   visualization: [{ type, data }] | null,
 *   data: { ... }                   | null,
 *   ai_message, suggested_chips, ...
 * }
 *
 * Each getter extracts the relevant piece from the envelope.
 */

import { apiGet, apiPost } from '../../lib/apiClient';

// ─────────────────────────────────────────────────────────────────────────────
// PAGE: Live Site Picture
// ─────────────────────────────────────────────────────────────────────────────

/** Zones + flagged jobs for the Live Site Picture page. */
export async function getSiteData() {
  const res = await apiGet('/api/site/operational');
  // data.zones is the zone list, visualization[0].data has the flagged jobs
  return {
    zones:       res.data?.zones || [],
    flaggedJobs: res.visualization?.[0]?.data?.flagged_jobs || [],
  };
}

/** Just the flagged jobs, ranked. */
export async function getFlaggedJobs() {
  const res = await apiGet('/api/site/operational');
  return res.visualization?.[0]?.data?.flagged_jobs || [];
}

/** Site GeoJSON — zone polygons, flagged markers, gates, muster points. */
export async function getSiteGeo() {
  const res = await apiGet('/api/site/geo');
  return res.visualization?.[0]?.data || { type: 'FeatureCollection', features: [] };
}

/** Live worker positions — 2,412 GeoJSON points. */
export async function getWorkerPositions() {
  const res = await apiGet('/api/site/workers');
  return res.visualization?.[0]?.data || { type: 'FeatureCollection', features: [] };
}

/** Zones only — for the map and muster board's zone coverage. */
export async function getZones() {
  const res = await apiGet('/api/site/operational');
  return res.data?.zones || [];
}

// ─────────────────────────────────────────────────────────────────────────────
// PAGE: Permit and Job Detail
// ─────────────────────────────────────────────────────────────────────────────

/** Full permit detail — conditions, gas test, entrants, entry/exit log. */
export async function getPermits() {
  const res = await apiGet('/api/permits');
  return res.visualization?.[0]?.data || {};
}

/** Indoor floor plan GeoJSON for IndoorViewer. */
export async function getIndoorGeo() {
  const res = await apiGet('/api/indoor-geo');
  return res.visualization?.[0]?.data || { type: 'FeatureCollection', features: [] };
}

/** Headcount reconciliation — sources, exceptions, trusted figures. */
export async function getReconciliation() {
  const res = await apiGet('/api/reconciliation');
  return res.visualization?.[0]?.data || {};
}

// ─────────────────────────────────────────────────────────────────────────────
// PAGE: Muster Status
// ─────────────────────────────────────────────────────────────────────────────

/** Live muster — per-point accounting, unaccounted groups, projection. */
export async function getMuster() {
  const res = await apiGet('/api/muster');
  return res.visualization?.[0]?.data || {};
}

// ─────────────────────────────────────────────────────────────────────────────
// PAGE: Data Sources
// ─────────────────────────────────────────────────────────────────────────────

/** Connected data sources. */
export async function getDataSources() {
  const res = await apiGet('/api/datasources');
  return res.data?.sources || [];
}

// ─────────────────────────────────────────────────────────────────────────────
// PAGE: Ask TrackLynk — Init (signals + KPIs + greeting)
// ─────────────────────────────────────────────────────────────────────────────

/** Priority signals for the current persona. */
export async function getSignals() {
  const res = await apiGet('/api/ask/init');
  return res.data?.signals || [];
}

/** KPI tiles for the current persona — computed from live DB. */
export async function getKpis() {
  const res = await apiGet('/api/ask/init');
  return res.data?.kpis || [];
}

// ─────────────────────────────────────────────────────────────────────────────
// CHAT: Ask TrackLynk — Conversational
// ─────────────────────────────────────────────────────────────────────────────

/**
 * Send a question to the backend and get an AI response.
 * Returns the full response envelope including:
 * - ai_message: the chat bubble text
 * - suggested_chips: next question suggestions
 * - visualization: component + data to render
 * - data, report (if applicable)
 *
 * @param {string} question - The user's question
 * @param {Array}  conversationHistory - Prior turns [{role, text}]
 */
export async function askQuestion(question, conversationHistory = []) {
  return apiPost('/api/ask', {
    question,
    conversation_history: conversationHistory,
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// ASSETS
// ─────────────────────────────────────────────────────────────────────────────

/** Full asset fleet with health readings. */
export async function getAssets() {
  // Assets are returned via the chat API when the user asks about them.
  // For now return an empty shell — the chat flow handles asset questions.
  return { assets: [], featured: null };
}

/** Single asset by id or tag. */
export async function getAsset(idOrTag) {
  return null;
}

// ─────────────────────────────────────────────────────────────────────────────
// STATIC / NOT YET CONNECTED
// These still read from local JSON until the backend endpoints are ready.
// ─────────────────────────────────────────────────────────────────────────────

import currentState  from './currentState.json';
import journey       from './journey.json';
import cameras       from './cameras.json';
import criticalAlert from './criticalAlert.json';

export async function getCurrentState()  { return currentState; }
export async function getJourney()       { return journey; }
export async function getCameras()       { return cameras; }
export async function getCriticalAlert() { return criticalAlert; }
```

---

## Part 6 — Wire the Chat Response into the UI

The `POST /api/ask` response has a different shape from the static `chatFlows.json`.
You need to map the backend envelope to what `useManifestChat` expects.

### What the backend returns

```json
{
  "ai_message": "Three jobs are running without valid permits...",
  "suggested_chips": ["Open evidence for job 1", "Show on site map"],
  "capability": "Anomaly Detection",
  "confidence": 96,
  "data_sources_used": ["Permit-to-work system"],
  "visualization": [
    { "type": "Table", "data": { "flagged_jobs": [...] } }
  ]
}
```

### What the chat engine expects

Looking at `useManifestChat.js`, the engine expects:

```javascript
{
  ai_message:       "string",
  suggested_chips:  ["string"],
  capability:       "string",
  confidence:       96,
  data_sources_used: ["string"],
  inlineComponents: <ReactComponent />  // rendered from visualization[]
}
```

### The adapter

Create `src/lib/chatAdapter.js`:

```javascript
/**
 * Maps the backend API response envelope to the shape
 * that useManifestChat and PersonaWorkspace expect.
 */

import FlaggedJobsTable              from '../components/aramco/FlaggedJobsTable';
import MusterBoard                   from '../components/aramco/MusterBoard';
import PermitDetailCard              from '../components/aramco/PermitDetailCard';
import HeadcountReconciliationPanel  from '../components/aramco/HeadcountReconciliationPanel';
import PrioritizedActionCards        from '../components/aramco/PrioritizedActionCards';
import AssetHealthCard               from '../components/aramco/AssetHealthCard';
import LazySiteMap                   from '../components/aramco/LazySiteMap';
import LazyIndoorViewer              from '../components/aramco/LazyIndoorViewer';

/**
 * Maps visualization.type from the backend to the React component.
 */
const COMPONENT_MAP = {
  'Table':               FlaggedJobsTable,
  'StatusBoard':         MusterBoard,
  'DetailPanel':         PermitDetailCard,
  'ReconciliationPanel': HeadcountReconciliationPanel,
  'ActionCards':         PrioritizedActionCards,
  'Cards':               AssetHealthCard,
  'Map':                 LazySiteMap,
  'IndoorMap':           LazyIndoorViewer,
};

/**
 * Takes the raw API response and returns a chat turn object
 * that PersonaWorkspace can render.
 *
 * @param {object} apiResponse - The full response from POST /api/ask
 * @returns {object} - Chat turn ready for the UI
 */
export function adaptChatResponse(apiResponse) {
  const {
    ai_message,
    suggested_chips = [],
    capability,
    confidence,
    data_sources_used = [],
    visualization = [],
  } = apiResponse;

  // Build inline component getters from visualization[]
  // Each visualization item becomes a getter that returns its data
  const inlineGetters = (visualization || []).map((viz) => {
    const Component = COMPONENT_MAP[viz.type];
    if (!Component) return null;
    // Return a getter function that the component's getter prop can use
    return () => Promise.resolve(viz.data);
  }).filter(Boolean);

  return {
    ai_message,
    suggested_chips,
    capability:         capability || 'Converged Conversation',
    confidence:         confidence || 80,
    data_sources_used,
    // The first visualization becomes the primary inline component
    primaryGetter:      inlineGetters[0] || null,
    primaryComponent:   visualization?.[0]?.type || null,
    allVisualizations:  visualization || [],
  };
}
```

---

## Part 7 — Verify the Integration

### 7.1 — Make sure both servers are running

Open **two terminal windows**:

**Terminal 1 — Backend:**
```bash
cd ~/Desktop/Aramco_Backend
source venv/bin/activate
uvicorn app.main:app --reload --port 8000
```

**Terminal 2 — Frontend:**
```bash
cd ~/Desktop/tracklynk
npm run dev
```

### 7.2 — Check the browser network tab

1. Open `http://localhost:5700` in Chrome or Firefox
2. Open Developer Tools (`F12` or `Cmd+Option+I` on Mac)
3. Click the **Network** tab
4. Reload the page
5. Filter by `XHR` or `Fetch`

You should see requests to `http://localhost:8000/api/...` appearing.

### 7.3 — Check each page loads live data

| Page | URL | Expected API call |
|---|---|---|
| Ask TrackLynk | `/ask` | `GET /api/ask/init` |
| Live Site Picture | `/live-site` | `GET /api/site/operational` + `/geo` + `/workers` |
| Permit and Job Detail | `/permits` | `GET /api/permits` + `/indoor-geo` + `/reconciliation` |
| Muster Status | `/muster` | `GET /api/muster` |
| Data Sources | `/data-sources` | `GET /api/datasources` |

### 7.4 — Test the chat

On the Ask TrackLynk page, click one of the suggested chips (e.g. "Show the three flagged jobs").

In the Network tab you should see:
- `POST /api/ask` with status `200`
- Response body containing `ai_message` and `visualization`

---

## Part 8 — CORS Configuration

If you see errors like `Access to fetch at 'http://localhost:8000' from origin 'http://localhost:5700' has been blocked by CORS policy` in the browser console:

Open `Aramco_Backend/.env` and add the frontend URL to `ALLOWED_ORIGINS`:

```dotenv
ALLOWED_ORIGINS=["http://localhost:5700","http://localhost:5173","http://localhost:3000"]
```

Restart the backend:
```bash
# Press Ctrl+C to stop, then:
uvicorn app.main:app --reload --port 8000
```

---

## Part 9 — File Change Summary

These are the only files you change in the frontend. Everything else stays exactly as it is.

| File | Action | What changes |
|---|---|---|
| `src/lib/apiClient.js` | **Create new** | Shared HTTP client with headers |
| `src/lib/chatAdapter.js` | **Create new** | Maps API response to chat turn shape |
| `src/data/aramco/hse-gm/index.js` | **Replace** | Getters call API instead of JSON |
| `tracklynk/.env` | **Edit** | Add `VITE_API_BASE_URL` and persona vars |

No screen files, component files, hooks or manifest files are changed.

---

## Part 10 — Running Both Together

Every time you want to run the full stack locally:

### Step 1 — Start PostgreSQL (if local)

```bash
brew services start postgresql@14       # Mac
sudo systemctl start postgresql         # Linux
```

Windows: Search **Services** → start **PostgreSQL 14**.

### Step 2 — Start the backend

```bash
cd ~/Desktop/Aramco_Backend
source venv/bin/activate                # Mac/Linux
venv\Scripts\activate                   # Windows
uvicorn app.main:app --reload --port 8000
```

Wait for: `Application startup complete.`

### Step 3 — Start the frontend

```bash
cd ~/Desktop/tracklynk
npm run dev
```

Wait for: `Local: http://localhost:5700/`

### Step 4 — Open the app

```
http://localhost:5700
```

Login with access key: `rdvr@9705`

---

## Troubleshooting

### Frontend shows no data / blank panels

- Check the browser console (F12) for errors
- Check the Network tab — are API calls returning 200?
- Make sure the backend is running: `http://localhost:8000/health`

### `Failed to fetch` error in browser console

The backend is not running or not reachable. Make sure:
1. The backend uvicorn process is still running in its terminal
2. `VITE_API_BASE_URL=http://localhost:8000` is in the frontend `.env`
3. You restarted `npm run dev` after editing `.env`

### `CORS blocked` error in browser console

The frontend origin is not in the backend's `ALLOWED_ORIGINS`. Add `http://localhost:5700` to the backend `.env` and restart uvicorn.

### Data looks the same as before (still static)

The old `index.js` might still be cached. Try:
```bash
# In the frontend terminal
Ctrl+C
npm run dev
```
Then hard-refresh the browser: `Cmd+Shift+R` (Mac) or `Ctrl+Shift+R` (Windows).

### `net::ERR_CONNECTION_REFUSED`

Port 8000 is not open. The backend is not running. Start it:
```bash
cd ~/Desktop/Aramco_Backend
source venv/bin/activate
uvicorn app.main:app --reload --port 8000
```

### `404 Not Found` on API calls

The API path is wrong. Check the backend Swagger at `http://localhost:8000/swagger`
and verify the endpoint paths match what `apiClient.js` is calling.

---

## Quick Reference

```
Backend:   http://localhost:8000
Swagger:   http://localhost:8000/swagger
Frontend:  http://localhost:5700
Login key: rdvr@9705

Files changed in frontend:
  src/lib/apiClient.js                    ← new
  src/lib/chatAdapter.js                  ← new
  src/data/aramco/hse-gm/index.js        ← replaced
  .env                                    ← edited

Required headers on every API call:
  X-Market-Id:  oil-gas
  X-Client-Id:  aramco
  X-Persona-Id: hse-gm
  X-Site-Id:    aramco-site-001
```
