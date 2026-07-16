# API surface

> Endpoint list only. Request/response *shapes* are shown for integration planning. No
> agent logic or prompts are disclosed here.

## Core (15 hand-authored agents)

| Method | Path | Purpose |
|---|---|---|
| `GET` | `/health` | liveness |
| `POST` | `/agents/{slug}` | single agent review — `{"text": "...", "metadata": null}` |
| `POST` | `/team` | bundle/full-pipeline — `{"text": "...", "agents": ["sec","legal"] \| null, "metadata": null}` |

A key is entitled to an explicit slug allowlist (`k1:security;k2:*`). Unknown slug → 403.

## Data-driven enterprise pool (290+ agents)

| Method | Path | Purpose |
|---|---|---|
| `GET` | `/pool/agents` | list pool agents (slug/domain/lane) |
| `POST` | `/pool/agents/{slug}` | single pool agent review |
| `POST` | `/pool/team` | subset or whole pool — `{"text": "...", "agents": [...]\|null}` |
| `POST` | `/pool/agents/{slug}/reflect` | metacognitive self-reflection (set `apply:true` to auto-improve) |
| `GET` | `/pool/metacog/report` | whitebox transparency roll-up (human-facing) |

## Finding shape (returned by every agent)

```json
{
  "agent": "legal-ip",
  "complete": true,
  "findings": [
    {
      "agent": "legal-ip",
      "severity": "blocker | flag | note",
      "description": "what is wrong, in plain terms",
      "evidence": "verbatim substring quoted from YOUR input"
    }
  ],
  "error": null
}
```

## Environment

- `NVIDIA_API_KEY` — the LLM backend.
- `LAURA_AGENTS_KEYS` — entitlement table, `key:slug1,slug2;key2:*`.

The full deployable Axum binary, Dockerfile, and `fly.toml` are in the **private** repository.
