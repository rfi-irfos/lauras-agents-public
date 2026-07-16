# Architecture (concept)

> **Concept only.** No agent prompts or manifests are published in this repository. This
> describes the *shape* of the system so a licensee/collaborator can understand it before
> gaining access to the private source.

## Three layers

```
┌─────────────────────────────────────────────────────────────┐
│ lauras-agents-api        HTTP surface, per-key entitlements  │
│   /agents/{slug}  /team            (the 15 hand-authored)    │
│   /pool/agents/*  /reflect  /metacog/report  (data-driven)   │
├─────────────────────────────────────────────────────────────┤
│ lauras-agents-registry    loads *.{toml} manifests → AgentPool│
│ lauras-agents-metacog     whitebox self-improvement          │
├─────────────────────────────────────────────────────────────┤
│ lauras-agents-core        Agent trait, LlmClient, Finding,    │
│                            LlmBackedAgent (shared engine),    │
│                            NimClient (LLM bridge)             │
└─────────────────────────────────────────────────────────────┘
```

## Key ideas

- **One engine, many prompts.** Every agent — hand-authored crate or data manifest — delegates
  to the same `LlmBackedAgent` execution engine. Specialisation lives entirely in the prompt,
  not in divergent code.
- **Entitlement model.** A key maps to an explicit slug allowlist (or `*`). An unknown slug in
  an entry fails loud on startup. This is what makes "license one agent" real, not just a
  pricing page.
- **Reliable structured output.** The hard problem is getting well-formed, evidence-quoted JSON.
  The engine does strict parse first, then a structural-repair fallback that splits the response
  into its `{...}` objects by brace depth (correct regardless of quoted content), and finally
  verifies every `evidence` is a verbatim substring of the input before returning it.
- **Data-driven pool.** Adding an enterprise function = adding a TOML file. `feeds_into` edges let
  multi-agent flows be modelled as directed graphs.
- **Whitebox metacog.** See `docs/metacog-whitebox.md`.

## Why it is private

The 15 core system prompts and the 290+ enterprise manifests *are* the product. They are
tuned, licensed IP. Only the concept and the free deterministic sibling
([`call-laura`](https://github.com/rfi-irfos/call-laura)) are public.
