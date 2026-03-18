# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Hard Thrust** is a psychological thriller novel by Joshua Cox. The manuscript is publication-ready as of March 2026. The primary file is `FULL_MANUSCRIPT.txt` (~10,600 lines, 33 chapters + epilogue).

## Twist Architecture (SPOILER-SENSITIVE)

The manuscript has 4 major twists that must be protected from early reader detection:

| Twist | Reveal Chapter | What Reader SHOULD Believe |
|-------|---------------|---------------------------|
| Josh is the killer (operates as "Marcus Webb" in fugue states) | Ch 25 | Eleanor is the predator; Josh is the innocent narrator |
| Eleanor is Lily Ashford's sister, investigating Josh | Ch 26 | Eleanor is a dangerous groundskeeper stalking Josh |
| Eleanor has terminal glioblastoma | Ch 26 | Eleanor is drugging Josh with her mysterious pills |
| Josh's mother was murdered at Thornewood in 1998 | Ch 27 | No connection between Josh and the estate's history |

## Key Documentation Files

| File | Purpose |
|------|---------|
| `STORY_BIBLE.md` | Canon reference — all character details, backstory, worldbuilding rules |
| `CHAPTER_MAP.md` | Per-chapter summaries, reader-state tracking, consistency anchors (4-act structure) |
| `TIMELINE_MAP.md` | Date-by-date chapter mapping with POV assignments (Oct 2024 – Sep 2025) |
| `forbidden-terms.md` | 723 lines of spoiler-risk language organized by twist category |
| `FRESH_AUDIT_MARCH_18_2026.md` | Current audit status — fresh trust-nothing audit |

## Spoiler Protection Rules

**`forbidden-terms.md` is the source of truth.** Key rules:

- **Before Ch 25:** No DID/killer language (episode, dissociation, another self, monster). Watch for denial spoilers ("I'm not a killer") which telegraph guilt equally.
- **Before Ch 26:** No illness/cancer terms. Max 1 physical symptom per Eleanor chapter. No sisterhood/familial language about the victim.
- **Before Ch 27:** No mother/1998/Thornewood connection language.
- **Cluster rule:** Individual terms may pass, but 3+ from one category in a single scene spoils the twist. Always check for clusters, not just individual terms.

**Danger zone: Chapters 15-22** — historically contain the most spoiler risk across all three cluster categories.

## Diagnostic Tests for Eleanor POV Chapters

Every Eleanor section must pass all three:
- **Stranger Test:** Would a first-time reader think she's the threat (not investigator)?
- **Motive Test:** Does she seem to want harm (not answers/justice)?
- **Illness Test:** Are her symptoms situational (not clearly medical)?

Known failures (fixed): Ch 8, 10, 12, 18, 20, 22. Clean: Ch 2, 4, 6, 14, 16, 24.

## Audit Methodology

The proven architecture for full manuscript audits:

1. **Phase 0** — 10 automated grep scans against forbidden-terms.md patterns
2. **Phase 1** — 5 parallel chapter-range agents: A(1-8), B(9-14), C(15-22), D(23-28), E(29-33+Ep)
3. **Phase 2** — Synthesis of all findings, prioritize CRITICAL fixes first

Each agent reports: line numbers, severity (CRITICAL/HIGH/MEDIUM/LOW), suggested fix. Runtime: ~15-20 minutes.

## Chapter Boundary References

Key line-number landmarks in `FULL_MANUSCRIPT.txt`:
- Ch 25 starts ~line 7850 (Marcus Webb reveal)
- Ch 26 starts ~line 8243 (illness/sister reveals)
- Ch 27 starts ~line 8768 (mother reveal)

**Note:** Both Josh and Eleanor chapters use first-person narration. Some chapters (e.g., Ch 6, Ch 12) have mixed-POV sections with explicit markers.

## Scripts & Tools

| Script | Purpose | Usage |
|--------|---------|-------|
| `ralph-chapter-loop.ps1` | Chapter-by-chapter consistency analyzer with auto-fix | `powershell ./ralph-chapter-loop.ps1 -StartChapter 1 -EndChapter 33` |
| `ralph-chapter-loop.bat` | Windows batch wrapper for the above | `ralph-chapter-loop.bat` |
| `apply_fixes.py` | Applies JSON fix files to manuscript | `python apply_fixes.py fixes.json FULL_MANUSCRIPT.txt` |
| `convert_to_docx_v3.py` | Generates KDP-format DOCX (Print + Kindle variants) | `python convert_to_docx_v3.py` |
| `test_parse.ps1` | Validates PowerShell script syntax | `powershell ./test_parse.ps1` |

## Critical Lessons Learned

1. **Always verify fixes in the actual manuscript text** — fixes documented in Story Bible or forbidden-terms were often NOT applied to `FULL_MANUSCRIPT.txt`. Never trust documentation alone.
2. **Cluster detection beats individual term scans** — scan for co-occurring indicators, not just single forbidden words.
3. **Denial spoilers are invisible to naive search** — "I'm not a killer" spoils as effectively as "I am the killer." Search for both affirmations and denials.
4. **The manuscript is the source of truth for what text exists** — `STORY_BIBLE.md` is the source of truth for what SHOULD exist.

## MCP Configuration

- **UNO-MCP** is configured for prose enhancement (`analyze_text`, `enhance_text`, `custom_enhance_text`)
- Context7 and Chrome plugins are disabled for this project (see `.claude/mcp.json`)
