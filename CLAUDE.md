# CLAUDE.md — eaprime1/nullus

**Status: DRAFT — ♣️ Club / 1/3 PLANK. Drafted from the naught/maw/nullus
handoff (custos PR #337) and this repo's own canon. Not ready to carry as final
until the owner resolves the open questions below.**

If a task needs architecture this file and the canon don't cover, stop and flag
it in the PR rather than inventing it.

## What this repository is

NULLUS is **being-as-naught** — the "I AM of naught" (`fui nullus`: _I existed,
as naught_; never `non fui`: _I was not_). It is the inversion threshold between
the extremes (-1K ↔ +1K). It is not void, not zero, not absence, and not
programming `null`.

Canon lives here and outranks this file:

- `CHARTER.md` — identity, ethics, NUNC NULLUS invocation rules, amendment
  process
- `docs/glossary.md` — canonical definitions; new terms must be added here
- `docs/architecture.md`, `docs/port-of-entry.md` — ANTE-ESSE → THE/SPHINCTER →
  MAW → System Canon
- `core/` (naught, inversion, threshold), `protocols/`, `integration/`
- `.github/copilot-instructions.md` — language and tone rules; they apply to
  Claude too

## Responsibilities

1. **The formal chain of custody starts here.** Nullification is the act that
   brings something into custody. This is a responsibility this repo holds, not
   only a rule naught inherits: every nullification must leave a record of what
   entered, from where, when (prima-clock `YYYYMMDDHHMM`), and in what state it
   left.
2. **Nullification via gas transfer.** Movement is an instantaneous semantic
   copy — shape-agnostic, container-independent. A new state is produced; the
   prior state is preserved and traceable. Nothing is mutated in place.
3. **Hand off cleanly to naught.** Output leaves as `unknown` (anti_vector) into
   `eaprime1/naught`'s intake. Keep the interface minimal; don't import naught's
   internals or assume shared runtime state.

## Hard rules

1. **No erasure.** Deletion moves toward `non fui`; nullification moves toward
   `fui nullus`. Use isolate, transform, hold, transit, invert — never erase,
   delete, wipe, destroy — in files, code, commit messages, and PR text. If a
   task seems to require removing something, stop and ask.
2. **No more change than necessary.** Each nullification or edit changes only
   what it must. No "while I'm in here" cleanup alongside a custody change.
3. **Preserve the canon's language.** Keep `fui nullus` / `non fui` distinct;
   keep ANTE-ESSE, THE, SPHINCTER, MAW symbolic. Markdown first; no software
   constructs unless explicitly requested.
4. **Metaphor boundary.** NUNC NULLUS and all emergency-adjacent language is
   narrative architecture only. Any file carrying it includes the disclaimer
   from `.github/copilot-instructions.md`.
5. **Charter changes go through Charter §VI** (issue, 7-day review, owner
   acknowledgment) — never inline in an unrelated PR.

> This is part of the narrative/symbolic architecture. It is not medical,
> mental-health, legal, or real-world emergency advice.

## Checks before a PR

```bash
# required files present (CI: nullification-protocols.yml)
bash scripts/validate-repo.sh
# unfilled placeholders
bash tools/scan_lexeme.sh
# erasure-pattern words: review each hit against hard rule 1
grep -rniE '\b(erase|wipe|destroy)\b' --include='*.md' .
```

## Open questions — do not resolve without the owner

- **Where Maw sits.** The handoff chain reads _Unknowable → Maw → Known_naught →
  Nullus → Unknown → naught_. This repo's `docs/architecture.md` reads
  _ANTE-ESSE → THE/SPHINCTER → MAW → System Canon_ (MAW downstream of NULLUS).
  Both may be true at different scales, or one supersedes the other. Carry both;
  pick neither.
- **Founding definition.** The handoff quotes Nullus's founding definition as
  _"Empty had something and lost it. Nullus = the state before 'something' was
  ever a category."_ The Charter defines NULLUS as the inversion threshold
  between extremes. How the two sit together (pre-category origin vs. threshold)
  is the owner's to state.
- **"Retroactive healing."** Charter §IV says a distressed state is removed
  "from canonical continuity while preserving the lessons it carried." Confirm
  that the original record itself is held (not just its lessons), so this stays
  consistent with no-erasure.
- **`prima.yaml` is still the unfilled template** (`name: "My Prima Terminal"`).
  Naming it is an owner act.

Hold the shape; don't fill it.
