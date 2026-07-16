# Metacognition — whitebox self-improvement

> Concept. The actual reflection prompts and trace format are proprietary (private repo).

## The problem

An autonomous reviewer that never questions itself is a liability — especially under the
EU AI Act, which expects providers to *know and document what their system cannot do*.

## The design

After each review, the agent is re-prompted **as a reviewer of its own output**:

1. **Self-critique.** It names what it did weakly (e.g. "I flagged the MIT license conflict
   but did not confirm the license terms via a live lookup").
2. **Capability gaps.** It states plainly what it *cannot* verify from text alone (live system
   state, internal financials, regulator intent). This is the transparency requirement, made
   operational — not a marketing claim.
3. **Autonomous prompt rewrite.** It may rewrite its own `system_prompt`, version-bumped
   (e.g. `1.1.0 → 1.1.1`). Constraints:
   - **Prompt text only.** The runtime engine is never touched.
   - **Versioned + append-only trace.** Every change is logged to `traces/{slug}.jsonl`; the
     prior version is always recoverable. This is the *white box*: an auditor can see exactly
     what the agent decided and when.
4. **Skill proposals (human review).** If the agent realises it needs a new capability, it
   stages a `skill_proposals/{slug}.json` with `status: "proposed"`. **Never auto-installed.**
5. **Orchestrator = report only.** `GET /metacog/report` rolls gaps, prompt changes, and
   proposals up for humans. The orchestrator takes no action itself.

## Why this satisfies "whitebox by design"

- Every self-change is **auditable** and **reversible** (version history).
- The agent's **own admission of ignorance** is first-class data, surfaced to humans.
- Autonomy is bounded: prompts yes, code no; skills proposed, not installed.
