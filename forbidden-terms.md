# Forbidden Terms List - Hard Thrust

## Purpose
This document lists words, phrases, and patterns that must NOT appear before their designated reveal chapters. Finding these terms early is a CRITICAL issue that spoils twists.

---

## Reveal Timeline

| Chapter | What Gets Revealed |
|---------|-------------------|
| Ch 26 | Eleanor's pills are cancer medication |
| Ch 26 | Eleanor has terminal glioblastoma |
| Ch 26 | Eleanor is Lily's sister (owns Thornewood) |
| Ch 27 | Josh IS the killer (Marcus Webb) |
| Ch 27 | Josh's mother was murdered at Thornewood (1998) |

---

## TWIST 1: Eleanor's Pills Are Cancer Medication
**Reveal Chapter:** 26
**Forbidden Before Ch 26:**

### Exact Terms
- `cancer` (in relation to Eleanor)
- `chemotherapy` / `chemo`
- `oncologist` / `oncology`
- `tumor`
- `glioblastoma`
- `malignant`
- `metastatic` / `metastasis`
- `radiation treatment`
- `terminal` (in relation to Eleanor)

### Patterns to Grep
```bash
# Run on chapters 1-25 only
grep -i "cancer\|chemo\|tumor\|glioblastoma\|oncolog\|malignan\|metasta\|radiation.treat\|terminal.ill"
```

### Allowed Alternatives
- "pills" (ambiguous)
- "medication" (ambiguous)
- "prescription" (ambiguous)
- "medical condition" (vague)
- "not feeling well" (symptomatic without diagnosis)

---

## TWIST 2: Eleanor Has Terminal Illness
**Reveal Chapter:** 26
**Forbidden Before Ch 26:**

### Exact Terms
- `dying` (in relation to Eleanor)
- `terminal` (in relation to Eleanor)
- `months to live`
- `time is running out` (in medical context)
- `glioblastoma`
- `brain tumor`
- `hospice`
- `palliative`
- `end stage`

### Patterns to Grep
```bash
# Run on chapters 1-25 only
grep -i "dying\|terminal\|months to live\|brain tumor\|hospice\|palliative\|end.stage"
```

### Symptom Allowances
These symptoms can appear but must be explained differently:
- Headaches → stress, tension, weather
- Fatigue → hard work, insomnia
- Nausea → food, stress
- Vision issues → lighting, strain

### Forbidden Symptom Clusters
If multiple symptoms appear together, it may telegraph illness:
- Headache + nausea + cognitive issues = TOO OBVIOUS
- Fatigue + weakness + "not much time" = TOO OBVIOUS

---

## TWIST 3: Eleanor Is Lily's Sister
**Reveal Chapter:** 26
**Forbidden Before Ch 26:**

### Exact Terms
- `Lily's sister`
- `my sister Lily`
- `sister` + `Ashford` (in same paragraph)
- `Eleanor Ashford` (her real name)
- `inherited` + `Thornewood` (together)
- `own` + `estate` + `Eleanor` (together)

### Patterns to Grep
```bash
# Run on chapters 1-25 only
grep -i "lily.s.sister\|sister.lily\|eleanor.ashford\|inherit.*thornewood\|own.*estate"
```

### Allowed References
- "Moore" (Eleanor's cover name)
- "groundskeeper" (her cover job)
- General references to Lily as past victim
- Eleanor's interest in the case (explained as professional/journalistic)

### Danger Patterns
- Eleanor too emotional about Lily → reveals connection
- Eleanor knowing personal details about Lily → reveals connection
- Eleanor having Lily's belongings → reveals connection

---

## TWIST 4: Josh IS the Killer (Marcus Webb)
**Reveal Chapter:** 27
**Forbidden Before Ch 27:**

### Exact Terms
- `Marcus Webb` (connected to Josh in any way)
- `I killed` (Josh speaking/thinking)
- `Josh attacked`
- `Josh strangled`
- `his hands around her throat` (Josh as subject)
- `blood on his hands` (literal, not metaphorical)
- `he was the killer`
- `Josh Caine is Marcus Webb`

### Patterns to Grep
```bash
# Run on chapters 1-26 only
grep -i "marcus.webb\|I.killed\|josh.attack\|josh.strangl\|he.was.the.killer"
```

### Forbidden Connections
- Blackout timing + crime timing (explicit correlation)
- Josh's location + victim's location (explicit match)
- Witness description + Josh's appearance (explicit match)
- Josh's hands + violence (except in fear/metaphor)

### Allowed References
- Marcus Webb as mysterious suspect (unconnected to Josh)
- Blackouts (explained as stress/medical)
- Josh's research on crimes (professional interest)
- Josh's fear he might be involved (paranoia, not certainty)

### Critical Danger Patterns
```bash
# These patterns would instantly spoil the twist
"Josh.*Marcus"
"he realized he was"
"the killer all along"
"blood on Josh"
"Josh remembered killing"
```

---

## TWIST 5: Josh's Mother Was Murdered at Thornewood
**Reveal Chapter:** 27
**Forbidden Before Ch 27:**

### Exact Terms
- `mother` + `Thornewood` + `1998` (together)
- `his mother was killed here`
- `witnessed` + `mother's murder`
- `childhood trauma` + `Thornewood`
- `came back to where it happened`

### Patterns to Grep
```bash
# Run on chapters 1-26 only
grep -i "mother.*thornewood.*1998\|mother.killed.here\|witnessed.*mother\|childhood.*thornewood"
```

### Allowed References
- Josh was adopted (general fact)
- Josh had early childhood trauma (vague)
- Josh doesn't remember before age 5-6 (vague)
- Thornewood has dark history (general, not connected to Josh)
- 1998 murder mentioned in Thornewood's past (not connected to Josh)

### Danger Patterns
- Josh feeling déjà vu at Thornewood → careful, don't make it too specific
- Josh drawn to specific locations → don't connect to 1998 event
- Josh's adoption story → don't connect to Thornewood timeline

---

## Grep Command Templates

### Full Scan (All Forbidden Terms)
```bash
# Creates report of all potential spoilers
grep -n -i -E "(cancer|chemo|tumor|glioblastoma|terminal|dying|lily.s.sister|marcus.webb|mother.*thornewood)" FULL_MANUSCRIPT.txt
```

### Per-Twist Scans

**Twist 1-2 (Eleanor's Illness):**
```bash
grep -n -i -E "(cancer|chemo|tumor|glioblastoma|oncolog|terminal|dying|hospice|brain.tumor)" FULL_MANUSCRIPT.txt
```

**Twist 3 (Lily's Sister):**
```bash
grep -n -i -E "(lily.s.sister|sister.lily|eleanor.ashford|inherit.*thornewood|ashford.*eleanor)" FULL_MANUSCRIPT.txt
```

**Twist 4 (Josh is Killer):**
```bash
grep -n -i -E "(marcus.webb|josh.*kill|I.killed|blood.on.his|he.was.the.killer)" FULL_MANUSCRIPT.txt
```

**Twist 5 (Mother's Murder):**
```bash
grep -n -i -E "(mother.*thornewood|witnessed.*mother|childhood.*trauma.*thornewood|1998.*josh)" FULL_MANUSCRIPT.txt
```

---

## Severity Ratings

| Finding | Severity | Action |
|---------|----------|--------|
| Exact forbidden term in wrong chapter | CRITICAL | Must fix immediately |
| Danger pattern match | MAJOR | Review context, likely fix |
| Symptom cluster suggesting illness | MAJOR | Obscure or redistribute |
| Emotional connection to Lily | MAJOR | Reduce or reframe |
| Timeline correlation (blackouts/crimes) | CRITICAL | Must obscure |
| Character suspects Josh | CRITICAL | Remove before Ch 26 |

---

## Allowed Misdirection Terms

These terms can appear freely to maintain misdirection:

**Eleanor as Threat:**
- dangerous
- can't trust her
- what is she hiding
- she's planning something
- killer (in relation to Eleanor)
- she could kill me

**Josh as Victim:**
- afraid
- trapped
- something's wrong with me
- losing my mind
- she's watching me
- need to escape

**Ambiguous/Tension:**
- secret
- truth
- reveal
- all along
- hiding something
- not who they seem

---

## Quick Reference: Chapter Boundaries

| Chapters | Safe for Twist 1-2 | Safe for Twist 3 | Safe for Twist 4-5 |
|----------|-------------------|------------------|-------------------|
| 1-25 | NO | NO | NO |
| 26 | YES | YES | NO |
| 27-33 | YES | YES | YES |

---

## Automated Check Command

Run this before each loop iteration:

```bash
# Full forbidden terms check
echo "=== TWIST 1-2: Eleanor's Illness ==="
grep -n -i -E "(cancer|chemo|tumor|glioblastoma|terminal|dying)" chapters_1-25.txt

echo "=== TWIST 3: Lily's Sister ==="
grep -n -i -E "(lily.s.sister|eleanor.ashford|inherit.*thornewood)" chapters_1-25.txt

echo "=== TWIST 4: Josh is Killer ==="
grep -n -i -E "(marcus.webb|josh.*kill|blood.on.his.hands)" chapters_1-26.txt

echo "=== TWIST 5: Mother's Murder ==="
grep -n -i -E "(mother.*thornewood.*1998|witnessed.*mother)" chapters_1-26.txt

echo "=== DANGEROUS PATTERNS ==="
grep -n -i -E "(he.was.the.killer.all.along|josh.*marcus|realized.*he.was)" FULL_MANUSCRIPT.txt
```

Any output = potential spoiler requiring review.
