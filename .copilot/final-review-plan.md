# Final PR review plan

## Purpose
Provide a repeatable, comprehensive final review flow for documentation-first changes in NULLUS.

## Scope
- Core symbolic consistency across canonical terms.
- Safety/metaphor framing for emergency-adjacent content.
- Link, structure, and contribution guidance coherence.
- Repository validation and CI alignment.

## Review checklist
- [ ] Re-read `README.md`, `CHARTER.md`, and `CONTRIBUTING.md` for canonical consistency.
- [ ] Confirm key docs preserve term intent (`NULLUS`, `ANTE-ESSE`, `NUNC NULLUS`, `THE`, `SPHINCTER`, `MAW`).
- [ ] Verify emergency-adjacent docs retain metaphor/safety disclaimer language.
- [ ] Validate architecture mappings avoid identity/analogy contradictions.
- [ ] Check naming and file placement conventions remain consistent.
- [ ] Run `bash scripts/validate-repo.sh`.
- [ ] Confirm workflow checks still reflect required anchor phrases and required files.
- [ ] Produce final review summary with:
  - [ ] Decision (approve/request changes)
  - [ ] Blockers (if any)
  - [ ] Ideas forward
  - [ ] Issues forward

## Evidence expectations
- Cite concrete file paths for findings.
- Prefer no-op approval only when validation passes and no canonical/safety conflicts are found.
- Record risks as actionable, minimal follow-ups.
