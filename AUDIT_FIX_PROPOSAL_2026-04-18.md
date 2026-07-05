# Audit Fix Proposal — April 18, 2026

**Scope:** Full manuscript spoiler/consistency audit
**Method:** Phase 0 (10 automated grep scans against forbidden-terms.md) + Phase 1 (5 parallel chapter-range agents: 1–8, 9–14, 15–22, 23–28, 29–Ep) + Phase 2 synthesis and verification
**Status:** Proposals only — no manuscript edits made. Approve each fix individually, or reply "apply all CRITICAL/HIGH" etc.

---

## Top-level verdict

The manuscript is in very good shape. No Marcus Webb / glioblastoma / Eleanor-Ashford / mother+Thornewood+1998 leaks appear before their permitted reveal chapters when checked as exact-term scans.

**What I found:** one CRITICAL leak (Ch 22 Eleanor POV), two HIGH cluster issues (Ch 20 and Ch 24 Eleanor POV), two MEDIUM cluster compounds (Ch 12/13), and one LOW monitor item (Ch 20 Josh). Everything else passed.

**What I'm NOT recommending changes to:**

- The word "finish" / "finish what I started" in Eleanor POV. It appears ~20 times pre-Ch25, which reads as a book-wide deliberate ambiguous choice — the word works for predator OR investigator. Changing it would be disruptive for little gain.
- The M+L decoy guesses in Ch 21 ("Malcolm and Laura. Max and Louise. Mystery and Lie."). These are explicitly allowed per forbidden-terms.md line 96.
- All `cancer`/`glioblastoma`/`Eleanor Ashford`/`Marcus Webb`/`1998`/`witnessed mother's murder` hits — every instance is at or after its permitted reveal chapter.
- Ch 29–Epilogue. The final-act agent found zero issues; canon is consistent.

---

## CRITICAL — 1 fix

### C1. Ch 22 Eleanor POV, Line 6678 — Mother/Case-file leak

**Why this is CRITICAL:** Eleanor, two full chapters before the Ch 27 mother-at-Thornewood-1998 reveal, internally refers to Josh's mother's murder in specific investigator terms — "Case never solved. Files sealed" — and frames it as "another weapon." This does three things a careful reader can catch:

1. Reveals that Eleanor has case-file-level knowledge of Josh's mother's murder (implying real investigation, which spoils her cover).
2. The phrase "another weapon" plus "Case never solved. Files sealed" is mission-framing language pre-Ch 25 (investigator cluster).
3. Combined with her guarded reaction to the photo in the same scene (line 6672, 6674), it primes the reader to connect Josh's mother to the book's central mystery — the Ch 27 twist.

**Context (lines 6670–6695):**

```
The photo hit me harder than I expected.

That photo stirred an ache I hadn't expected. The woman holding the toddler—him as a child, reaching for someone who would be taken from him. Another vulnerability he didn't know he was giving me.

"She's beautiful," I said. My voice came out wrong—thick, unsteady. I handed the photo back and smoothed my expression. Sympathetic. The performance he expected.

"That's a lot to carry around," I said. "Not knowing what happened to her."

But inside, my mind was racing. His mother was murdered. Case never solved. Files sealed. And now he'd handed me another weapon without even realizing it.
```

**Proposed fix — replace line 6678 only:**

BEFORE:
```
But inside, my mind was racing. His mother was murdered. Case never solved. Files sealed. And now he'd handed me another weapon without even realizing it.
```

AFTER:
```
But inside, my mind was racing. He'd just handed me another wound I could press on. Another soft place to reach into when the time came.
```

Keeps Eleanor predatory (pressing wounds, reaching in) while removing the specific "murdered / case unsolved / files sealed" evidence-research language and the "weapon" mission-completion beat. The paragraph above (6672) already establishes she sees him as vulnerable and the toddler as losing someone — that emotional hook is preserved and is reread-gold once the Ch 27 reveal lands.

---

## HIGH — 2 fixes

### H1. Ch 24 Eleanor POV, Lines 7382 / 7452–7454 — "evidence room" + "I'm not a threat"

**Why HIGH:** Ch 24 is one chapter before the Ch 25 Marcus-Webb reveal, and one chapter BEFORE the Ch 26 sister/illness reveal. Some tension-flip is intentional here, but four phrasings go explicitly investigator — the single word "evidence," plus Eleanor internally insisting "I'm not a threat" and her observing Josh is acting "exactly what I'd expect from an investigator." The Eleanor-as-threat illusion is supposed to last one more chapter.

**Flagged lines:**

- L7382: `The plan had been to show him the evidence room today.`
- L7404–7406: `Everything I'd come here for would be lost. The truth would be buried under his paranoia. And Josh would never get the answers he needed. I had to reach him. Had to show him the truth.`
- L7452–7454: `I wanted him to see that I wasn't going anywhere. That I was patient. That I wasn't a threat. / That I cared.`
- L7460: `Smart. Methodical. Exactly what I'd expect from an investigator who thought he was under attack.`
- L7710: `And waited. Knowing that tomorrow, everything would change. That the evidence room would show him what I couldn't say. That he would finally understand what he was.`

**Proposed fixes** (minimal — only the worst offenders):

**L7382** — the phrase "evidence room" appears first in this chapter. It recurs several times later (7710, 8226, 8272, 8456, 8554, 8614, 9314). In 8226+ (Ch 25+) the term is fine — post-reveal. The question is whether to rename the pre-reveal instances.

BEFORE (L7382):
```
The plan had been to show him the evidence room today. To sit him down, gently, and walk him through what I'd found. Everything I'd been holding back. Everything I needed him to see.
```

AFTER:
```
The plan had been to bring him to the loft today. To sit him down, gently, and walk him through what I'd found. Everything I'd been holding back. Everything I needed him to see.
```

BEFORE (L7710):
```
And waited. Knowing that tomorrow, everything would change. That the evidence room would show him what I couldn't say. That he would finally understand what he was.
```

AFTER:
```
And waited. Knowing that tomorrow, everything would change. That the loft would show him what I couldn't say. That he would finally understand what he was.
```

(The loft has already been established as Eleanor's locked space. This substitution is invisible to a first-time reader but removes "evidence" from pre-reveal text.)

**L7452–7454** — "I wasn't a threat. That I cared."

BEFORE:
```
He had cameras. He was watching. I wanted him to see that I wasn't going anywhere. That I was patient. That I wasn't a threat.

That I cared.
```

AFTER:
```
He had cameras. He was watching. I wanted him to see that I wasn't going anywhere. That I was patient. That I could wait him out.

That I wasn't done.
```

Preserves Eleanor's predator energy (patient, won't leave, not done) and removes the two most explicit investigator tells in the chapter.

**L7460** — "exactly what I'd expect from an investigator"

BEFORE:
```
Smart. Methodical. Exactly what I'd expect from an investigator who thought he was under attack.
```

AFTER:
```
Smart. Methodical. Exactly what I'd expect from a man who thought he was being hunted.
```

Same beat, but the comparison is now Josh-as-prey rather than Josh-as-investigator — which fits both the predator misdirection AND the eventual reveal that Josh really was being hunted (by Eleanor-the-PI, not by a killer Eleanor).

**L7404–7406** — "the truth would be buried" / "answers he needed" — this combo also telegraphs investigator-with-mission. Pair fix:

BEFORE:
```
Everything I'd come here for would be lost. The truth would be buried under his paranoia. And Josh would never get the answers he needed.

I had to reach him. Had to show him the truth. Before the police arrived.
```

AFTER:
```
Everything I'd come here for would be lost. Whatever I'd built with him, whatever he thought this was — it would be buried under his paranoia. And I would never get to finish what I'd started.

I had to reach him. Had to get him to open that door. Before the police arrived.
```

(Drops "the truth" / "answers he needed" — both investigator signals — while keeping the "finish what I started" ambiguity that the rest of the book uses.)

---

### H2. Ch 20 Eleanor POV, Lines 6350 / 6388–6503 — mission-language + patience cluster

**Why HIGH:** Ch 20 is Eleanor's "Preparation" chapter, and the internal monologue concentrates multiple investigator-cluster flags in one place: patience ("Waiting for morning. Always waiting for morning."), deadline framing ("Won't be long now"), clinical observation ("The paranoia eating him alive. The way stress was hollowing him out."), and mission-completion ("finish what I came here to do" / "finish what I'd started" / "finishing this" — four instances in this chapter alone). Individually each has plausible deniability; stacked in a single Eleanor POV they telegraph *investigator on a mission*, not *obsessive predator*.

Rather than rewrite the chapter, the minimal intervention is to:

1. Delete the single most leaky sentence.
2. Swap one "finish" for a predator-flavored alternative to thin the cluster.

**Fix 1 — L6350 (standalone note between scenes):**

BEFORE:
```
*December 7: He's falling apart. Exhausted. Paranoid. Jumping at shadows. Won't be long now.*
```

AFTER:
```
*December 7: He's falling apart. Exhausted. Paranoid. Jumping at shadows. Almost ready.*
```

"Won't be long now" is the classic investigator patience-language tell (forbidden-terms line 188). "Almost ready" is ambiguous — ready for what? Reader can read it as prey-being-softened-up.

**Fix 2 — L6455:**

BEFORE:
```
I'd gone over it so many times. Looking for the weakness. The detail that would crack him open. The one piece I could hold up to his face and watch him crumble.
```

AFTER:
```
I'd gone over it so many times. Looking for the weakness. The soft place I could press. The one thing I could hold up to his face and watch him crumble.
```

("The detail that would crack him open" is evidence-terminology. "The soft place I could press" preserves the predator beat.)

**Fix 3 — L6477–6479:**

BEFORE:
```
No. I can't let this go. I can't let what he makes me feel erase what I've been building. I didn't come this far to leave empty-handed.

Even if getting them destroys me.
```

AFTER:
```
No. I can't let this go. I can't let what he makes me feel erase what I've been building. I didn't come this far to leave empty-handed.

Even if taking him destroys me.
```

("Getting them" — plural — has plural "victims" undertones that are investigator-shaped. "Taking him" keeps the predator read.)

If you'd prefer a bigger rewrite of this chapter's Eleanor section, say so — I can draft a tighter version. The three spot-fixes above are the minimal intervention that materially thins the cluster.

---

## MEDIUM — 2 fixes

### M1. Ch 12 Eleanor POV, Line 3692 — Mirror + stranger + mission

**Why MEDIUM:** The three-element combo — mirror scene + "reflection is a stranger" + mission language "has to see this through" — is the specific pattern forbidden-terms.md flags under DID cluster (mirror/identity confusion) AND investigator cluster (mission framing). It's defensible as Eleanor's moral-compromise shame, but it's the exact pattern the rules warn about.

BEFORE:
```
I change into the long wool sweater he likes. My reflection in the mirror is a stranger. But she's the woman who has to see this through.
```

AFTER:
```
I change into the long wool sweater he likes. My reflection in the mirror is a stranger. But she's the woman he wants, and tonight that's enough.
```

Breaks the cluster. Eleanor-as-performer beat is preserved. No "see this through" / "has to" mission cue.

### M2. Ch 13 Eleanor POV, Lines 4018 and 4020 — Double "see this through"

**Why MEDIUM:** The phrase "see this through" appears twice within three lines. "See this through" is explicitly on the forbidden-terms.md justice/mission framing list.

BEFORE:
```
I didn't know what would happen when winter ended. Whether I'd see this through. Whether I'd have the nerve when the moment came.

But I had to keep going. Had to see this through.
```

AFTER:
```
I didn't know what would happen when winter ended. Whether I'd have the nerve when the moment came. Whether I'd still want to.

But I had to keep going. Had to see this through.
```

Keeps one "see this through" (fine as rhythmic cadence); drops the doubled instance; adds "Whether I'd still want to" to preserve the line's doubt-beat.

---

## LOW — 1 monitor item

### L1. Ch 20 Josh POV, Line 6234 — Scratches + lost time

```
I'd woken up exhausted again, confused about what day it was, with scratches on my hands that had probably come from the blackberry canes near the woodpile—though I couldn't remember going out there.
```

This is the only pre-Ch25 line that pairs unexplained body evidence (scratches) with lost-time ("couldn't remember going out there"). It's explained (blackberries, exhaustion). In isolation it's fine. It's flagged here only so you're aware the combination exists — no fix recommended.

---

## Summary

| # | Severity | Chapter | Line | Category | Action |
|---|----------|---------|------|----------|--------|
| C1 | CRITICAL | 22 | 6678 | Mother-1998 leak | Replace line |
| H1 | HIGH | 24 | 7382, 7404–06, 7452–54, 7460, 7710 | Investigator cluster | 5 spot-fixes |
| H2 | HIGH | 20 | 6350, 6455, 6477–79 | Mission+patience cluster | 3 spot-fixes |
| M1 | MEDIUM | 12 | 3692 | Mirror+mission combo | Replace line |
| M2 | MEDIUM | 13 | 4018–4020 | Doubled "see this through" | Replace 1 sentence |
| L1 | LOW | 20 | 6234 | Scratches+lost time | Monitor only |

**Total proposed changes: 11 line-level edits.** Every fix is minimal, preserves established voice/tone, and does not introduce new spoiler risk I could detect.

---

## How to respond

Reply with any of:

- **"Apply all"** — I'll apply all 10 edits (C1, H1×5, H2×3, M1, M2) to `FULL_MANUSCRIPT.txt`
- **"Apply CRITICAL and HIGH"** — C1 + H1 + H2 only (9 edits)
- **"Apply CRITICAL only"** — C1 only (1 edit)
- **Specific IDs** — e.g. "Apply C1 and H1 but skip L7460"
- **"Revise X"** — if you want me to redraft a specific fix differently

I will back up `FULL_MANUSCRIPT.txt` to a dated copy before applying anything.
