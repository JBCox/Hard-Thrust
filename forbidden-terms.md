# Forbidden Terms List - Hard Thrust

## Purpose
This document lists words, phrases, and patterns that must NOT appear before their designated reveal chapters. Finding these terms early is a CRITICAL issue that spoils twists.

---

## Reveal Timeline

| Chapter | What Gets Revealed |
|---------|-------------------|
| Ch 25 | Josh IS the killer (Marcus Webb) |
| Ch 26 | Eleanor's pills are cancer medication |
| Ch 26 | Eleanor has terminal glioblastoma |
| Ch 26 | Eleanor is Lily's sister (owns Thornewood) |
| Ch 27 | Josh's mother was murdered at Thornewood (1998) |

---

## TWIST 1: Eleanor's Pills Are Cancer Medication
**Reveal Chapter:** 26
**Forbidden Before Ch 26:**

### Exact Terms
- `cancer` (in relation to Eleanor)
- `chemotherapy` / `chemo`
- `oncologist` / `oncology`
- `tumor` / `glioblastoma`
- `malignant` / `metastatic` / `metastasis`
- `radiation treatment`
- `terminal` (in relation to Eleanor)
- `hospice` / `palliative` / `end stage`
- `dying` (in relation to Eleanor)
- `months to live` / `brain tumor`

### Allowed Alternatives
- "pills" / "medication" / "prescription" (ambiguous)
- "medical condition" / "not feeling well" (vague)
- Individual symptoms (headache, fatigue, nausea) if attributed to stress/work/weather

### Forbidden Symptom Clusters
If multiple symptoms appear together, it telegraphs illness:
- Headache + nausea + cognitive issues = TOO OBVIOUS
- Fatigue + weakness + "not much time" = TOO OBVIOUS
- Left-side symptom specificity (indicates right-brain pathology)
- Cap Eleanor's physical symptoms to **1 per chapter**

---

## TWIST 2: Eleanor Is Lily's Sister
**Reveal Chapter:** 26
**Forbidden Before Ch 26:**

### Exact Terms
- `Lily's sister` / `my sister Lily`
- `sister` + `Ashford` (in same paragraph)
- `Eleanor Ashford` (her real name)
- `inherited` + `Thornewood` (together)

### Danger Patterns
- Eleanor too emotional about Lily → reveals family connection
- Eleanor knowing personal details about Lily → reveals connection
- Eleanor invoking family/mother in moral judgments about her mission
- "Destroy him" (implies justice/revenge, not predation) — use "ruin" instead

---

## TWIST 3: Josh IS the Killer (Marcus Webb)
**Reveal Chapter:** 25
**Forbidden Before Ch 25:**

### Exact Terms
- `Marcus Webb` (connected to Josh in any way)
- `I killed` (Josh speaking/thinking)
- `he was the killer` / `Josh Caine is Marcus Webb`
- Any correct interpretation of M+L as "Marcus and Lily"

### Forbidden DID/Dissociation Language
- "another self" / "parts of me" / "pieces of me"
- "the darkness wants control" / "something else in control"
- Body parts acting autonomously ("fingers moving on their own")
- Self-harm for grounding (cheek-biting as clinical grounding technique)
- "stayed aware" / "fighting to stay present" (system awareness)
- Mirror scenes with identity confusion

### Forbidden Connections
- Blackout timing + crime timing (explicit correlation)
- Josh's location + victim's location (explicit match)
- Witness description + Josh's appearance (explicit match)

### Allowed References
- Marcus Webb as mysterious suspect (unconnected to Josh)
- Blackouts (explained as stress/drugging)
- Josh's research on crimes (professional interest)
- Josh's fear he might be involved (paranoia, not certainty)
- Decoy M+L guesses only: "Michael and Lauren," "Malcolm and Lisa"

---

## TWIST 4: Josh's Mother Was Murdered at Thornewood
**Reveal Chapter:** 27
**Forbidden Before Ch 27:**

### Exact Terms
- `mother` + `Thornewood` + `1998` (together)
- `his mother was killed here`
- `witnessed` + `mother's murder`
- `childhood trauma` + `Thornewood`

### Allowed References
- Josh was adopted (general fact)
- Josh had early childhood trauma (vague)
- Thornewood has dark history (general, not connected to Josh)

---

## Grep Scan Commands

### Full Scan (All Forbidden Terms)
```bash
grep -n -i -E "(cancer|chemo|tumor|glioblastoma|terminal|dying|lily.s.sister|marcus.webb|mother.*thornewood)" FULL_MANUSCRIPT.txt
```

### Per-Twist Scans
```bash
# Twist 1-2 (Eleanor's Illness)
grep -n -i -E "(cancer|chemo|tumor|glioblastoma|oncolog|terminal|dying|hospice|brain.tumor)" FULL_MANUSCRIPT.txt

# Twist 2 (Lily's Sister)
grep -n -i -E "(lily.s.sister|sister.lily|eleanor.ashford|inherit.*thornewood)" FULL_MANUSCRIPT.txt

# Twist 3 (Josh is Killer)
grep -n -i -E "(marcus.webb|josh.*kill|I.killed|blood.on.his|he.was.the.killer)" FULL_MANUSCRIPT.txt

# Twist 4 (Mother's Murder)
grep -n -i -E "(mother.*thornewood|witnessed.*mother|childhood.*trauma.*thornewood)" FULL_MANUSCRIPT.txt
```

### DID Cluster Detection
```bash
grep -n -i -E "(another.self|parts.of.me|pieces.*vanish|darkness.*control|moving.on.their.own|without.my.control)" FULL_MANUSCRIPT.txt
```

### Investigator Language in Eleanor POV
```bash
grep -n -i -E "(research|evidence|case.file|investigation|handwriting.analysis|spring.my.trap)" FULL_MANUSCRIPT.txt
```

### Denial Spoiler Detection
```bash
# Josh denying specific accusations — the denial itself reveals the accusation
grep -n -i -E "(wasn.t here|wasn.t at thornewood|never been.*before|frame me|framing me)" FULL_MANUSCRIPT.txt
```

---

## Severity Ratings

| Finding | Severity | Action |
|---------|----------|--------|
| Exact forbidden term in wrong chapter | CRITICAL | Must fix immediately |
| Danger pattern match | MAJOR | Review context, likely fix |
| Symptom cluster suggesting illness | MAJOR | Obscure or redistribute |
| Timeline correlation (blackouts/crimes) | CRITICAL | Must obscure |
| Character *confirms* Josh is killer before Ch 25 | CRITICAL | Remove immediately |
| Denial that reveals the accusation | CRITICAL | Rewrite to remove the accusation content |

---

## Pattern Cluster Detection

**Individual hints may pass review. Accumulated clusters SPOIL TWISTS.**

### Cluster Detection Rules

**DID CLUSTER** — Flag if 3+ appear in Chapters 1-25:
- Memory gaps / lost time (any phrasing)
- Internal "darkness" or force wanting control
- Body parts acting autonomously
- Self-harm for grounding
- "Parts of me" or "pieces" language
- Mirror scenes with identity confusion

**INVESTIGATOR CLUSTER** — Flag if 3+ appear in Eleanor POV, Chapters 1-25:
- Grief-adjacent language ("someone I lost")
- Watching for "recognition" or "truth"
- Evidence/proof terminology
- Patience language (waiting for him to reveal himself)
- Justice/mission framing
- Clinical observation style

**ILLNESS CLUSTER** — Flag if 3+ appear in Chapters 1-25:
- Acceptance language ("made my peace," "ready")
- Urgency that sounds like deadline ("window closing")
- Multiple physical symptoms in one chapter
- Left-side symptom specificity
- Mortality awareness ("when I'm gone")

### Mitigation Strategies

1. **REMOVE** the most obvious hint in the cluster
2. **REFRAME** hints with alternative explanations (drugging, stress, isolation)
3. **REDISTRIBUTE** — move some hints to later chapters (after Ch 20)
4. **DISMISS** — have character explicitly reject the correct interpretation

### The Denial Spoiler Rule

**If Josh DENIES something, ask: "Does the denial reveal what he's being accused of?"**
If yes → it's a spoiler, even though it's phrased as denial.

**If Eleanor DENIES something, ask: "Does the denial tell readers what she really is?"**
Same rule applies. Negations draw attention to the thing denied.

---

## Quick Reference: Chapter Boundaries

| Chapters | Safe for Twist 1-2 | Safe for Twist 2 | Safe for Twist 3 | Safe for Twist 4 |
|----------|-------------------|------------------|------------------|------------------|
| 1-24 | NO | NO | NO | NO |
| 25 | NO | NO | YES | NO |
| 26 | YES | YES | YES | NO |
| 27-33 | YES | YES | YES | YES |

---

## Eleanor Diagnostic Tests (Apply to Every Eleanor POV Section)

1. **Stranger Test:** Would a stranger think this character is the threat (not investigator/victim)?
2. **Motive Test:** Does character seem to want harm (not answers/justice)?
3. **Illness Test:** Are symptoms situational (not clearly medical)?

If any test fails → rewrite the section with predatory energy.

---

## Allowed Misdirection Terms

**Eleanor as Threat:** dangerous, can't trust her, she's planning something, killer (in relation to Eleanor)

**Josh as Victim:** afraid, trapped, losing my mind, she's watching me, need to escape

**Ambiguous/Tension:** secret, truth, hiding something, not who they seem

---

*For canon facts, see: STORY_BIBLE.md*
*For chapter summaries, see: CHAPTER_MAP.md*
*For timeline, see: TIMELINE_MAP.md*
