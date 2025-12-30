# Book Editing Tools Reference

**Last Updated:** December 28, 2025

## Quick Reference: What Can We Check?

| Need to... | Use This |
|------------|----------|
| Check if twists are spoiled early | `/manuscript-reader` |
| Find fact inconsistencies (eye color, ages, etc.) | `/consistency-checker` |
| Check timeline contradictions | `/consistency-checker` |
| Find name spelling variations | `/consistency-checker` |
| Track setups that never pay off | `/setup-payoff-tracker` |
| Find payoffs without proper setup | `/setup-payoff-tracker` |
| Query the story bible | `/series-bible-manager` |
| Update/create story bible | `/series-bible-manager` |
| Analyze prose quality | UNO-MCP `analyze_text` |
| Enhance/expand prose | UNO-MCP `enhance_text` |
| Reduce word repetition | UNO-MCP `custom_enhance_text` |
| Store facts across sessions | Memory MCP |
| Full comprehensive analysis | `/manuscript-reader` (runs all) |

---

## Skills (Custom Claude Code Commands)

### 1. /manuscript-reader
**Purpose:** Analyze if readers will figure out twists too early

**Use when:**
- "Will readers figure out [twist] too early?"
- "Check my manuscript for twist giveaways"
- "Full manuscript analysis"

**What it does:**
- Deploys simulated readers tracking predictions
- Compares reader experience to author intent
- Integrates consistency, setup/payoff, and bible checks
- Produces severity-rated report

**Output:** `AUDIT_NOTES_TWIST.md`

---

### 2. /consistency-checker
**Purpose:** Find fact errors and continuity issues

**Use when:**
- "Check for inconsistencies"
- "Find continuity errors"
- "Verify facts match story bible"
- "Check character details are consistent"

**What it checks:**
- Character physical descriptions (eyes, hair, age)
- Timeline/chronology issues
- Location layout consistency
- Name spelling variations
- World-building rule violations

**Output:** `AUDIT_NOTES_CONSISTENCY.md`

---

### 3. /series-bible-manager
**Purpose:** Create, maintain, and query story bibles

**Use when:**
- "Create a story bible from my manuscript"
- "What does my story bible say about [character]?"
- "When did [event] happen?"
- "Update my story bible"
- "Show me all characters"

**What it does:**
- Auto-extracts entities from manuscripts
- Maintains canonical facts
- Answers queries instantly
- Syncs across books in series
- Uses Memory MCP for persistence

**Output:** `STORY_BIBLE.md` + Memory MCP entities

---

### 4. /setup-payoff-tracker
**Purpose:** Track Chekhov's Guns and story promises

**Use when:**
- "Check my setups and payoffs"
- "Did I forget to pay anything off?"
- "Are there any Chekhov's Guns I forgot?"
- "What story threads are still open?"

**What it finds:**
- Orphaned setups (planted but never used)
- Surprise payoffs (resolutions without setup)
- Weak links (setup-payoff too far apart)
- Strong links (working well, don't change)

**Output:** `AUDIT_NOTES_SETUP_PAYOFF.md`

---

## MCP Servers

### Memory MCP
**Purpose:** Persistent knowledge storage across sessions

**Tools:**
| Tool | Use |
|------|-----|
| `mcp__memory__create_entities` | Store characters, locations, facts |
| `mcp__memory__create_relations` | Link entities together |
| `mcp__memory__search_nodes` | Find stored information |
| `mcp__memory__open_nodes` | Retrieve specific entities |
| `mcp__memory__add_observations` | Add facts to existing entities |

**Current Hard Thrust entities:**
- Hard Thrust (manuscript)
- Josh Caine (protagonist)
- Eleanor Moore (protagonist)
- Marcus Webb (fugue identity)
- Lily Ashford (victim)
- Thornewood Estate (location)
- Kevin Chen (survivor)
- Rachel (agent)
- Roy (handyman)

**Query example:** `mcp__memory__search_nodes("Hard Thrust")`

---

### UNO-MCP
**Purpose:** Narrative text enhancement and analysis

**Location:** `C:/Users/joshu/UNO-MCP`

**Tools:**

| Tool | Purpose | Use For |
|------|---------|---------|
| `mcp__uno__analyze_text` | Get detailed analysis | Check prose quality metrics |
| `mcp__uno__enhance_text` | Expand ~200% using all techniques | Add depth/detail |
| `mcp__uno__custom_enhance_text` | Choose specific techniques | Targeted fixes |

**Enhancement techniques:**
- **Golden Shadow** - Character/plot psychological depth
- **Environmental Expansion** - Sensory details (sight, sound, smell, touch)
- **Action Scene Enhancement** - Dynamic intensity and pacing
- **Prose Smoothing** - Flow, rhythm, transitions
- **Repetition Elimination** - Word variety, reduce overused terms

**For prose polish (something/just/felt reduction):**
Use `custom_enhance_text` with `enableRepetitionElimination: true`

---

## Project Files

### Manuscript & Bible
| File | Purpose |
|------|---------|
| `FULL_MANUSCRIPT.txt` | Complete manuscript (100K words) |
| `STORY_BIBLE.md` | Canonical story facts (56KB) |
| `TIMELINE_MAP.md` | Chapter-by-chapter timeline |

### Audit Reports
| File | Contents |
|------|----------|
| `AUDIT_REPORT.md` | Executive summary of all audits |
| `AUDIT_NOTES_CONSISTENCY.md` | Fact verification results |
| `AUDIT_NOTES_SETUP_PAYOFF.md` | Chekhov's Gun tracking |
| `AUDIT_NOTES_TWIST.md` | Twist protection analysis |
| `AUDIT_NOTES_PROSE.md` | Word frequency data |
| `FIX_PLAN.md` | Consolidated action items |

### Configuration
| File | Purpose |
|------|---------|
| `EDITING_TOOLS.md` | This reference file |
| `.claude/mcp.json` | MCP server configuration |

---

## Common Workflows

### "Check everything before publication"
```
/manuscript-reader
```
Runs full integrated analysis.

### "Just check if facts are consistent"
```
/consistency-checker
```

### "I added new chapters, update the bible"
```
/series-bible-manager
```

### "Did I set up the gun in chapter 2 properly?"
```
/setup-payoff-tracker
```

### "Analyze prose quality of a passage"
```
mcp__uno__analyze_text with text from chapter
```

### "Reduce word repetition in a scene"
```
mcp__uno__custom_enhance_text with enableRepetitionElimination: true
```

### "Query story bible from new session"
```
mcp__memory__search_nodes("Hard Thrust")
mcp__memory__open_nodes(["Josh Caine", "Eleanor Moore"])
```

---

## Current Status (December 28, 2025)

| Check | Status | Grade |
|-------|--------|-------|
| Consistency | CLEAN | A |
| Setup-Payoff | 100% | A+ |
| Twist Protection | Protected | A+ |
| Prose Quality | Good | B+ |
| Story Bible | Synced | A |

**Verdict:** Publication-ready. Optional prose polish available.
