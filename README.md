# lauras-agents

**A team of narrowly-scoped expert reviewers, not one generic AI — built on Laura Serna Gaviria's Human-AI Co-Evolution research.**

Every agent looks at the *same* input at the same time, each inside its own lane, each
told to stay quiet rather than guess. Two specialists independently flagging the same
sentence — without being told to agree — is a far stronger signal than one model's
single opinion.

> **This repository is the public, source-free overview.** The actual agent logic
> (hand-authored specialist prompts and the data-driven enterprise pool of 290+ function
> agents) lives in a **private** repository, available to licensees and invited
> collaborators only. See [Access](#access).

---

## Why a team, not "ask an AI"

One general AI asked to "review this for anything wrong" gives a shallow scan that misses
whole categories, or blends a security concern in with a legal one with a wording nitpick.
This is different:

- **Narrow specialists**, each only inside their own lane.
- **Evidence-quoting discipline** — every finding quotes the exact piece of *your* text it
  reacts to. Never a paraphrase, never an invented example. A finding whose "evidence"
  isn't really in the input is dropped, never passed through on the model's word alone.
- **Stays quiet when it has nothing** — no fabricated "nothing found" just to look useful.

## What it catches

The licensed product covers, among others:

| Domain | Examples of what specialists look for |
|---|---|
| Security | injectable queries, weak hashing, hardcoded secrets, missing auth checks |
| Legal & Compliance | GDPR/CCPA/HIPAA/EU AI Act red flags, missing disclaimers, overstated claims |
| Finance | pricing/revenue claims with no source, blurred free-vs-paid lines |
| Privacy | personal data with no consent, retention, or stated reason |
| Operations | releases with no rollback, no monitoring, no owner |
| Strategy / Product | unproven competitive claims, features with no real user need |
| **Enterprise pool** | an org-chart-wide set of function agents (Legal-IP, Payments, CEO, AI-Safety, …) each with frameworks-aware review |

## The data-driven enterprise pool

The same engine scales to an entire organisation chart. Every function is its own agent,
defined entirely by a `system_prompt`-only manifest — adding a function is adding a file,
not a crate. Each manifest carries its org mapping (`domain` / `lane` / `feeds_into`) so a
flow like *"launch an AI feature"* can be modelled as a directed graph across the team.

## Metacognition — whitebox self-improvement (AI Act by design)

Every agent runs inside a "black box" it cannot see into. After each review it runs a
metacognitive pass:

1. It critiques **its OWN** prior findings and honestly lists what it did weakly — and
   **what it cannot verify** from text alone (capability gaps, the EU AI Act transparency
   requirement).
2. It may **autonomously rewrite its own system prompt** (version-bumped, e.g.
   `1.1.0 → 1.1.1`), applied instantly — never touching the runtime engine.
3. Every step is appended to an **append-only audit trace** — the whitebox log.
4. A **skill proposal** is staged for **human review only**, never auto-installed.
5. The orchestrator's only output is a **human-facing report** — it takes no action itself.
   Human oversight is documented, not decorative.

## Try the free, deterministic version

[`rfi-irfos/call-laura`](https://github.com/rfi-irfos/call-laura) is the public, free,
deterministic dogfood of the same taxonomy: the same 15 roles, but pattern-matching instead
of a real model call. It proves the discipline honestly before anyone pays.

## Access

`lauras-agents` is **proprietary**. Source is not published. To license single agents, a
bundle, or the full team as an automated pipeline, or to request collaborator access to the
private repository, contact RFI-IRFOS.

## Attribution

Named for and built on the framework of **Laura Serna Gaviria** (`EmergentInteractionLab`),
co-credited on both this overview and the private `lauras-agents` workspace.
