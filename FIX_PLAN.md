# HARD THRUST - Consolidated Fix Plan

**Date:** December 28, 2025 (Fresh Audit)
**Audit Summary:** Full manuscript audit using all 5 tools
**Overall Status:** PUBLICATION-READY

---

## EXECUTIVE SUMMARY

| Tool | Critical | Major | Minor | Grade |
|------|----------|-------|-------|-------|
| Story Bible Manager | 0 | 0 | 0 | A |
| Consistency Checker | 0 | 0 | 0 | A |
| Setup-Payoff Tracker | 0 | 0 | 0 | A+ (100%) |
| Manuscript Reader (Twist) | 0 | 0 | 0 | A+ |
| UNO-MCP Prose Analysis | 0 | 0 | 3 | B+ |
| **TOTAL** | **0** | **0** | **3** | **A** |

**Verdict:** No critical or major issues. Three optional prose polish items remain.

---

## ISSUES FIXED SINCE LAST AUDIT

| Issue | Previous Status | Current Status |
|-------|-----------------|----------------|
| Eleanor's eye color (line 3267) | MAJOR | FIXED |
| gray/grey spelling inconsistency | MINOR | FIXED |
| Scout the dog (orphaned setup) | ORPHANED | FIXED (payoff at line 8466) |
| Art supplies (weak link) | WEAK | FIXED (explanation at line 8875) |
| "something" overuse | 327 instances | Reduced to 257 (↓21%) |

---

## REMAINING POLISH ITEMS (Optional)

### 1. Further Reduce "Something" Usage

**Source:** Prose Analysis
**Current count:** 257 occurrences
**Target:** ~200 occurrences (reduce by ~20% more)

**Tool:** UNO-MCP `custom_enhance_text` with `enableRepetitionElimination: true`
Or manual: `grep -n "something" FULL_MANUSCRIPT.txt`

**Method:**
- Search for "something"
- Replace vague instances with specific nouns
- Keep intentional vagueness (uncertainty moments)

**Example fixes:**
- "Something about her expression..." → "Her expression..."
- "I felt something shift" → "The tension shifted"

**Estimated time:** 1-2 hours

---

### 2. Reduce "Just" Usage

**Source:** Prose Analysis
**Current count:** 288 occurrences
**Target:** ~200 occurrences

**Tool:** UNO-MCP `custom_enhance_text` with `enableRepetitionElimination: true`
Or manual: `grep -n "\bjust\b" FULL_MANUSCRIPT.txt`

**Method:**
- Search for "just"
- Delete when it adds no meaning
- Keep genuine modifiers ("just then," "just one")

**Example fixes:**
- "I just stood there" → "I stood there"
- "just a thought" → "a thought"

**Estimated time:** 1-2 hours

---

### 3. Reduce Filter Word "Felt"

**Source:** Prose Analysis
**Current count:** 94 occurrences
**Target:** ~65 occurrences

**Tool:** UNO-MCP `custom_enhance_text` with `enableProseSmoother: true`
Or manual: `grep -n "\bfelt\b" FULL_MANUSCRIPT.txt`

**Method:**
- Replace "felt [emotion]" with immediate sensory experience

**Example fixes:**
- "I felt afraid" → "Fear crawled up my spine"
- "She felt cold" → "Cold crept through her"

**Estimated time:** 45 minutes

---

## NO ACTION NEEDED (Verified Excellent)

### Consistency (Grade: A)
- All character details consistent (eye colors, ages, names)
- Timeline verified (Oct 2024 - Sept 2025)
- Victim count consistent (6 total, 5 dead, 1 survivor)
- All spellings standardized

### Setup-Payoff Structure (Grade: A+, 100%)
- All 18 major setups pay off properly
- No orphaned setups remaining
- No surprise payoffs (deus ex machina)

### Twist Protection (Grade: A+)
- All 5 major twists properly hidden until intended reveals
- Eleanor's POV maintains predatory tone throughout
- No clinical terms before Chapter 27
- Misdirection builds to maximum before devastating reversal

### Story Bible
- Updated and synced to Memory MCP
- 9 entities + 10 relations stored for cross-session access

---

## RECOMMENDED FIX ORDER

| Order | Task | Time | Impact |
|-------|------|------|--------|
| 1 | Reduce "something" (worst offenders) | 1 hr | Minor polish |
| 2 | Reduce "just" (obvious filler) | 1 hr | Minor polish |
| 3 | Reduce "felt" filter word | 45 min | Minor polish |

**Total estimated time:** 3-4 hours for optional polish

---

## FINAL VERDICT

This manuscript is **publication-ready**. The fresh audit confirms:

- **0 critical issues**
- **0 major issues**
- **3 optional prose polish items**

All previously identified issues (eye color, gray/grey, Scout, art supplies) have been fixed. The setup-payoff structure is now at 100% completion. The twist protection is excellent (A+ grade).

**Recommendation:** The manuscript can go to publication as-is. The prose polish items (something/just/felt reduction) would improve the reading experience but are not blocking.

---

## AUDIT FILE LOCATIONS

| File | Contents |
|------|----------|
| `AUDIT_NOTES_CONSISTENCY.md` | Fact checking - 0 issues |
| `AUDIT_NOTES_SETUP_PAYOFF.md` | Chekhov's Gun analysis - 100% |
| `AUDIT_NOTES_TWIST.md` | Twist protection - A+ grade |
| `AUDIT_NOTES_PROSE.md` | Word frequency analysis |
| `STORY_BIBLE.md` | Canonical facts reference |

---

## MEMORY MCP ENTITIES STORED

For cross-session access:
- Hard Thrust (manuscript metadata)
- Josh Caine (protagonist)
- Eleanor Moore (protagonist)
- Marcus Webb (fugue identity)
- Lily Ashford (victim)
- Thornewood Estate (location)
- Kevin Chen (survivor)
- Rachel (agent)
- Roy (handyman)

Query with: `mcp__memory__search_nodes("Hard Thrust")`
