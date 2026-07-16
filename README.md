[![visibility](https://img.shields.io/badge/visibility-PUBLIC%20overview-lightgrey)](#)
[![source](https://img.shields.io/badge/source-PRIVATE%20%2F%20proprietary-critical)](https://github.com/rfi-irfos/lauras-agents)
[![license](https://img.shields.io/badge/license-all--rights--reserved-red)](./LICENSE)
[![agents](https://img.shields.io/badge/enterprise%20pool-290%2B%20functions-blue)](./docs/architecture.md)
[![built on](https://img.shields.io/badge/built%20on-Laura's%20Human--AI%20Co--Evolution-informational)](https://github.com/rfi-irfos/call-laura)
[![free sibling](https://img.shields.io/badge/free%20version-call--laura-brightgreen)](https://github.com/rfi-irfos/call-laura)

# lauras-agents

**Stop asking one AI to "review this for anything wrong."** That's how you get a shallow
scan that misses whole categories, or blends a security flaw into a legal nitpick into a
wording complaint — and calls it a report.

We don't do that. We run **a team of narrow specialists** that each look at the *same*
input at the *same* time, each locked inside its own lane, each told to **shut up rather
than guess.** When two specialists independently flag the same sentence — and nobody told
them to agree — that's a real signal. One model's single opinion is not.

Built on **Laura Serna Gaviria's Human-AI Co-Evolution research.** Licensable per agent,
per bundle, or as the full team running automatically over your incoming data.

---

## What actually happens to your text

1. Your document goes to every entitled agent at once.
2. Each agent returns **findings that quote your exact words** — verbatim, never a
   paraphrase, never an invented example. A finding whose "evidence" isn't literally in
   your input is **dropped**, not passed through on the model's word.
3. An agent with nothing solid to say **says so** — no fabricated "all clear" just to look
   useful.
4. Every severity is explicit: `blocker` / `flag` / `note`.

That's the whole discipline. It's the same one the free, public
[`call-laura`](https://github.com/rfi-irfos/call-laura) proves deterministically — this
repo is where the *real* model-backed version lives.

### Why "a team" beats "one smart model"

A general model asked to find "anything wrong" has no incentive to stay in its lane. It
will tell you your comma is wrong *and* that your GDPR clause is shaky, in the same breath,
with the same confidence — so you can't tell which one matters. We invert that:

- **Security** only ever talks about security. If it sees a legal problem, it stays quiet.
- **Legal** only ever talks about legal exposure. It won't second-guess your password hash.
- When **Security** *and* **Legal** both quote the same line — e.g. an API key sitting next
  to a customer-PII clause — you've got two independent confirmations, not one model's
  mood. That intersection is where the real risk lives, and it's exactly what single-agent
  review blurs away.

### Why verbatim evidence matters (not "AI says so")

Every `finding` carries the exact substring it reacted to. If the agent claims
*"unenforceable IP assignment clause"*, the report shows you the actual sentence it means —
so you can read it yourself in two seconds instead of trusting a summary. And because we
**drop** any finding whose evidence isn't truly in your text, you never get a confident
hallucination dressed up as a quote. The model's word is never the last word.

## What it catches

The licensed product covers, among others:

| Domain | Concrete examples of what specialists look for |
|---|---|
| **Security** | injectable queries, weak password hashing, hardcoded secrets, missing auth checks |
| **Legal & Compliance** | GDPR/CCPA/HIPAA/EU AI Act red flags, missing disclaimers, overstated compliance claims |
| **Finance** | pricing/revenue claims with no source, blurred free-vs-paid lines |
| **Privacy** | personal data with no consent, retention, or stated reason |
| **Operations** | releases with no rollback, no monitoring, no clear owner |
| **Strategy / Product** | unproven competitive claims, features with no real user need |
| **Enterprise pool** | an org-chart-wide set of function agents — Legal-IP, Payments, CEO, AI-Safety — each with frameworks-aware review |

### The enterprise pool: your whole org chart, as agents

The 15 core roles are hand-authored. On the same engine sits a **data-driven pool of 290+
function agents** generated from an org map — Legal-IP, Payments, CEO, AI-Safety, every VP
and lane. Each one carries:

- its **frameworks** (Legal → IP-assignment / GDPR / indemnity; Payments → PCI-DSS;
  CEO → Reg FD / COSO; AI-Safety → EU AI Act),
- its **`feeds_into` edges**, so a flow like *"launch an AI feature"* becomes a
  **directed graph across the team** — not a black box.

You don't get "an AI looked at it." You get *the exact chain of specialists* a real launch
would have to clear, and which ones flagged what.

## Metacognition: agents that improve themselves, in the open

Here's the part nobody else does. Every agent runs inside a "black box" it can't see into.
After each review it **audits its own output**:

- It names what it did **weakly** — and what it **cannot verify** from text alone
  (live system state, internal financials, regulator intent). That admission of ignorance
  is first-class data, not a footnote. It's the **EU AI Act transparency requirement**,
  made operational.
- It may **rewrite its own system prompt** (`1.1.0 → 1.1.1`) — applied instantly, versioned,
  and logged to an **append-only trace**. The engine is never touched.
- A **skill proposal** is staged for **human review only**. Never auto-installed.
- The orchestrator's only job is a **human-facing report**. It takes no action itself.
  **Human oversight is documented, not decorative.**

That's **whitebox by design**: every self-change is auditable and reversible, and the
agent's own blind spots are surfaced to you. An autonomous system you can actually audit —
not a box you have to trust.

### A concrete metacog moment

The agent reviews a text, flags an unrecorded patent assignment. In its self-reflection it
admits: *"I flagged the assignment conflict, but I did not verify the actual assignment
terms or confirm the license via a live lookup."* It rewrites its own prompt to do exactly
that next time, bumps to `1.1.1`, logs the change, and proposes a new verification skill —
for **your** review. Nothing installs itself. You see every step.

## Try it free first

[`call-laura`](https://github.com/rfi-irfos/call-laura) is the public, deterministic,
free sibling — same 15-role taxonomy, pattern-matching instead of a model call. It proves
the discipline honestly before anyone pays for the real thing. Start there; license the
model-backed team when you're ready.

## Access

**This repository is source-free.** The agent prompts and the 290+ manifests are the
product — they live in a **private** repository, available to licensees and invited
collaborators. What you're reading is the concept and the contract. To license single
agents, a bundle, or the full automated pipeline, or to request collaborator access,
contact **RFI-IRFOS**.

## Docs in this repo

- [`docs/architecture.md`](./docs/architecture.md) — the three layers, the entitlement model, reliable structured output
- [`docs/metacog-whitebox.md`](./docs/metacog-whitebox.md) — the self-improvement design in detail
- [`docs/api.md`](./docs/api.md) — endpoint list + finding shape (integration planning)
- [`examples/sample-findings.json`](./examples/sample-findings.json) — synthetic example (clearly fabricated)

## Attribution

Named for and built on the framework of **Laura Serna Gaviria** (`EmergentInteractionLab`),
co-credited on both this overview and the private `lauras-agents` workspace.
