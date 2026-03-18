# COMPREHENSIVE MANUSCRIPT AUDIT REPORT — March 18, 2026

**Manuscript:** Hard Thrust (FULL_MANUSCRIPT.txt, 10,582 lines, 33 chapters + epilogue)
**Audit Date:** March 18, 2026
**Methodology:** Phase 0 (10 automated grep scans) + Phase 1 (5 parallel chapter-range agents) + Phase 1.5 (progressive savvy reader simulation) + Phase 2 (synthesis)
**Auditor:** Claude Opus 4.6 (1M context)
**Baseline:** COMPREHENSIVE_AUDIT_REPORT_MAR2026.md (March 17, 2026 — all 34 findings applied)

---

## EXECUTIVE SUMMARY

| Category | CRITICAL | HIGH | MEDIUM | LOW | Total |
|----------|----------|------|--------|-----|-------|
| Spoiler/DID Cluster | 4 | 4 | 5 | 3 | 16 |
| Illness Cluster | — | 1 | 4 | 1 | 6 |
| Investigator Cluster | — | 2 | 1 | — | 3 |
| Diagnostic Failures | — | — | 1 | — | 1 |
| Denial Spoilers | — | 1 | — | 1 | 2 |
| Consistency/Timeline | — | — | 3 | 2 | 5 |
| Legal/Procedural | — | — | 1 | — | 1 |
| **TOTAL** | **4** | **8** | **15** | **7** | **34** |

**Status:** **ALL 25 FIXES APPLIED** (March 18, 2026). The 4 CRITICAL, 8 HIGH, and 13 MEDIUM/LOW findings have been resolved. 9 findings reviewed and skipped as acceptable (F-24 through F-30, F-32, F-33). Ch 15 DID count reduced from 11 to ~3. Thornewood fate addressed in Epilogue. Ch 23 denial count reduced from 15 to ~11. All fixes verified via grep scans — no regressions.

**Progressive Reader Verdict:** A genre-savvy reader figures out Josh is the killer by Ch 7-14 and all other twists by Ch 19-21. However, the **emotional impact of the reveals remains devastating** even when intellectually anticipated. The novel succeeds as tragedy more than as mystery.

---

## PHASE 0: AUTOMATED SCAN RESULTS

| Scan | Target | Hits | Status |
|------|--------|------|--------|
| 0A | Illness terms before Ch 26 | 0 | **CLEAN** |
| 0B | Sister terms before Ch 26 | 1 (false positive: "Grandma's inheritance...Thornewood" at line 1202) | **CLEAN** |
| 0C | Killer terms before Ch 25 | 2 (line 6248 misdirection, line 6939 Ch 23 denial log) | **ACCEPTABLE** |
| 0D | Mother/1998 before Ch 27 | 1 (line 5439 — "witnessed a murder—my mother" proximity) | **ACCEPTABLE** |
| 0E | DID exact phrases | 1 (line 4893 — "fighting to stay conscious") | **SEE F-04** |
| 0F | Investigator in Eleanor POV | Many | **SEE CLUSTER TABLE** |
| 0G | Terminal urgency before Ch 26 | 0 | **CLEAN** |
| 0H | Denial spoilers before Ch 25 | 8 hits (5× "frame me", 2× "never been...before", 1× "monster") | **SEE F-26** |
| 0I | Fix verification (12 strings) | **All 12 absent — no regressions** | **CLEAN** |
| 0J | Name/fact consistency | 2 distinct Rachels, all facts consistent | **CLEAN** |

---

## ALL FINDINGS — PRIORITIZED

### CRITICAL (4) — Must Fix Before Publication

#### F-01: Ch 15 "body override my mind" — Forbidden Autonomous Body Language
- **Line:** 4881
- **Quote:** *"I feel my body override my mind completely. The animal brain surging forward"*
- **Category:** DID Cluster — Twist 3
- **Explanation:** Body acting autonomously with "override" is explicitly forbidden DID language per forbidden-terms.md ("Body parts acting autonomously"). "Override my mind" = loss of executive control to another force.
- **Fix:** Change to *"The nausea overwhelms me completely. Panic surging forward."*

#### F-02: Ch 15 "fighting to stay conscious...do something unforgivable" — System Awareness
- **Line:** 4893
- **Quote:** *"An eternity of fighting to stay conscious while Eleanor watches and I pray... that I won't black out and do something unforgivable"*
- **Category:** DID Cluster — Twist 3
- **Explanation:** "Fighting to stay conscious" matches forbidden "fighting to stay present." "Do something unforgivable" reveals Josh knows at some level that losing consciousness = violence. This is system awareness.
- **Fix:** Change to *"An eternity of fighting to stay conscious while the drug tears through me and Eleanor watches and I pray that I won't black out again"*

#### F-03: Ch 15 Extended Self-Harm Grounding Technique (5 instances)
- **Lines:** 4845, 4887, 4889, 4931-4949
- **Quotes:**
  - 4845: *"Grip hard enough that wood bites into my palm. Physical pain. Anchor."*
  - 4887: *"The pain—sharp, real, grounding—cuts through the chemical fog"*
  - 4889: *"Use the pain in my bleeding hand as a weapon against the poison"*
  - 4931: *"I dug my thumbnail into the webbing between my thumb and forefinger. Hard... pressed harder until I felt the skin break"*
  - 4939-4949: Journal entry documenting pain as repeatable countermeasure
- **Category:** DID Cluster — Twist 3
- **Explanation:** Forbidden-terms.md explicitly lists "Self-harm for grounding (cheek-biting as clinical grounding technique)." Ch 15 has **5 instances** of systematized self-harm grounding, including a journal entry that documents it as a repeatable technique. This is the single most dangerous DID cluster in the manuscript.
- **Fix:** Reduce to 1 brief moment of involuntary pain (e.g., "My hand cramped from gripping the railing. The pain cut through the fog."). Remove the deliberate thumb-webbing scene (4931) and the journal entry documenting technique (4939-4949). Remove "grounding" language entirely.

#### F-04: Ch 18 "that other version pressing against his consciousness, wanting out"
- **Line:** 5803
- **Quote:** *"The thing underneath—that other version pressing against his consciousness, wanting out"*
- **Category:** DID Cluster — Twist 3
- **Explanation:** Eleanor literally describes an alter trying to emerge. "Other version" + "pressing against consciousness" + "wanting out" is textbook DID switching description.
- **Fix:** Change to *"The fury in him was barely contained now. Something volatile and dangerous pressing forward."* Remove "other version" and "consciousness."

---

### HIGH (8) — Should Fix

#### F-05: Ch 15 "primitive brain" / "animal brain" Rising Up (DID)
- **Lines:** 4861, 4905
- **Quotes:**
  - 4861: *"Something raw and animal rises up from beneath—the primitive brain, stripped of everything civilized"*
  - 4905: *"strips away everything human and leaves only the violence underneath"*
- **Category:** DID — internal force wanting control
- **Fix:** Reframe as drug effect: *"The chemicals strip away everything, leaving only raw panic."*

#### F-06: Ch 17 "Not like crafting a scene, but like remembering one"
- **Line:** 5435
- **Quote:** *"The violence had poured out of me in a way that was... different. Not like crafting a scene, but like remembering one."*
- **Category:** DID — Josh correctly interprets his experience before dismissing it
- **Fix:** Add stronger immediate dismissal or reframe: *"Not like crafting a scene—more like channeling every true crime case I'd ever researched into a single page."*

#### F-07: Ch 18 Neurological Deficit Language — "Fingers. Close. Grip. Lift."
- **Line:** 5719
- **Quote:** *"focusing on making my hand work. Fingers. Close. Grip. Lift."*
- **Category:** Illness Cluster — reads as neurological, not stress
- **Fix:** Replace with *"I gripped the counter until my hands steadied. Nerves. Just nerves."*

#### F-08: Ch 12 Mother's Phone Call Still Too Long (Mission Language)
- **Lines:** 3890-3954 (64 lines)
- **Quotes:** "I can't explain it over the phone" (3924), "I've come too far to stop now" (3942)
- **Category:** Investigator Cluster — Ch 12
- **Fix:** Trim lines 3910-3926 to reduce mission-language exposure. Keep the strongest misdirection lines ("he'll never see it coming").

#### F-09: Ch 22 DID Switching Description Too Clinical
- **Lines:** 6820, 6824, 6842
- **Quotes:**
  - 6820: *"His eyes were glassy, unfocused... like a sleepwalker who doesn't know where he is."*
  - 6824: *"And then he stopped. Blinked. Looked confused."*
  - 6842: *"Those glassy, unseeing eyes. Those hands around my throat."*
- **Category:** DID — witnessed dissociative episode
- **Fix:** Reduce clinical detail. Keep "sleepwalker" framing but cut the second repetition at line 6842. Change 6820 to *"His eyes were unfocused—like he was sleepwalking."*

#### F-10: Ch 22 "prove what that brokenness had made him do"
- **Line:** 6806
- **Quote:** *"I was losing my chance to prove what that brokenness had made him do"*
- **Category:** Investigator — confirms hypothesis about suspect's pathology
- **Fix:** Change to *"I was losing my chance to use what I knew against him."*

#### F-11: Ch 23 Denial Accumulation Volume
- **Lines:** 6890-6957 (15 distinct denial instances in one chapter)
- **Category:** Denial Spoiler — "lady doth protest too much"
- **Fix:** Reduce the formal document from 6 "impossibilities" to 4. Cut #5 (the Marcus Webb / "Someone else killed her" denial, lines 6937-6957) which is the most explicit accusation-through-denial.

#### F-12: Ch 8 Cheek-Biting — Clinical DID Grounding
- **Line:** 2161
- **Quote:** *"My mouth tasted strange. Bitter. Like I'd been biting the inside of my cheek."*
- **Category:** DID — forbidden per forbidden-terms.md
- **Fix:** Change to *"My mouth tasted strange. Bitter. Like old coffee and not enough water."*

---

### MEDIUM (15)

| # | Ch | Line | Finding | Category |
|---|-----|------|---------|----------|
| F-13 | 2 | 222 | "Third day in a row" headache seeds illness pattern too early | Illness |
| F-14 | 4 | 915 | "Morning fog" after pills suggests medication side effects | Illness |
| F-15 | 5 | 824 | "1998 — Young woman murdered in east wing" enables date math → Twist 4 | Spoiler |
| F-16 | 10 | 2972 | "didn't think about why it was getting worse" telegraphs chronic condition | Illness |
| F-17 | 14 | 4580 | Third headache/aspirin reference in Eleanor POV (cross-chapter pattern) | Illness |
| F-18 | 17 | 5273 | Two illness symptoms in one sentence (shaking hands + headache observed by Josh) | Illness |
| F-19 | 17 | 5451 | "Or I'd been there. Done it. Remembered it." — correct interpretation voiced | DID |
| F-20 | 18 | 6091 | "All I had left was borrowed time" — terminal illness language | Illness |
| F-21 | 20 | 6471 | "Mornings he woke confused, with mud on boots and no memory" — clinical documentation | Investigator |
| F-22 | 33 | 10219 | Kevin Chen still described as "Graduate student. Runner." not "Former" | Consistency |
| F-23 | 29 | 9799/9811 | Arraignment timeline contradiction (after psych eval vs. tomorrow) | Legal |
| F-24 | 18 | 5725 | "The pressure was building. I couldn't keep this performance going much longer." | Illness/Urgency |
| F-25 | Ch 1-8 | various | 3 lost-time incidents by Ch 8 (DID cluster at threshold) | DID |
| F-26 | 27 | 9047-9123 | ~80 lines of exposition in Ch 27 investigation timeline may stall momentum | Pacing |
| F-27 | 18 | 5851 | "I do care about you... I didn't want to. I tried not to." — investigator leaking | Investigator |

### LOW (7)

| # | Ch | Line | Finding | Category |
|---|-----|------|---------|----------|
| F-28 | 6 | 1534 | "Lost someone close to me" — grief-adjacent language (generic) | Investigator |
| F-29 | 7 | 1991 | "constructed this entire identity out of nowhere" — identity fragmentation language | DID |
| F-30 | 9 | 2612 | "M+L 2020" — handled correctly (decoy interpretations only) | Clean |
| F-31 | 17 | 5439 | "Never witnessed a murder—my mother" proximity match | DID/Denial |
| F-32 | 23 | 6957 | "Eleanor is the real killer" — actually effective misdirection | Misdirection+ |
| F-33 | 33 | 10287 | Eleanor's age "thirty-two" at death — depends on unspecified birthday | Consistency |
| F-34 | — | — | Thornewood estate fate never addressed | Dangling thread |

---

## CLUSTER STATUS TABLE (Updated March 18, 2026)

| Chapter | DID | Illness | Investigator | Status | Change from Mar 17 |
|---------|-----|---------|-------------|--------|---------------------|
| Ch 1-8 | 0-3 per ch | 0-1 per ch | 0-1 per ch | CLEAN (Ch 7-8 borderline DID) | Same |
| Ch 9-11 | 3-4 (Ch 11) | 0-1 | 1-2 | **BORDERLINE** | Same |
| Ch 12 | 0 | 1 | **3** | **BORDERLINE** | Same |
| Ch 13 | 3 | 0 | 0 | BORDERLINE | Same |
| Ch 14 | 0 | 1 | 2 | CLEAN | Same |
| **Ch 15** | **~3** | 0 | 0 | **CLEAN (was CRITICAL)** | **FIXED (was 11)** |
| Ch 16 | 0 | 1 | 10 | **OVER (Inv, mitigated)** | Same |
| **Ch 17** | **~2** | 1 | 0 | **BORDERLINE (was OVER)** | **IMPROVED** |
| **Ch 18** | 0 | **~2** | **20** | **OVER — Inv only** | **IMPROVED (illness fixed)** |
| **Ch 19** | 2 | 0 | 0 | CLEAN | Improved |
| **Ch 20** | 0 | 2 | **~20** | **OVER — Inv (reframed)** | **IMPROVED** |
| **Ch 21** | **4** | 0 | 0 | **OVER — DID** | Same |
| **Ch 22** | **~2** | 0 | 5 | **BORDERLINE (was OVER)** | **IMPROVED** |
| Ch 23-24 | Pre-reveal | Pre-reveal | Pre-reveal | See denial analysis | Same |
| Ch 25+ | Post-reveal | Post-reveal | Post-reveal | N/A | N/A |

---

## DIAGNOSTIC TEST RESULTS (Updated March 18, 2026)

| Chapter | Stranger Test | Motive Test | Illness Test | Overall | Change |
|---------|--------------|-------------|-------------|---------|--------|
| Ch 2 | PASS | PASS | MARGINAL | PASS | Same |
| Ch 4 | PASS | PASS | PASS | PASS | Same |
| Ch 6 | PASS | PASS | PASS | PASS | Same |
| Ch 8 | PASS | PASS | PASS | PASS | Same |
| Ch 10 | PASS | PASS | MARGINAL | PASS | Same |
| Ch 12 | PASS | **PASS** | PASS | **PASS** | **IMPROVED** (was FAIL) |
| Ch 14 | MARGINAL | PASS | PASS | MARGINAL PASS | Same |
| Ch 16 | PASS | PASS | PASS | PASS | Same |
| Ch 18 | MARGINAL | MARGINAL | **FAIL** | **BORDERLINE FAIL** | Same |
| **Ch 20** | MARGINAL | MARGINAL | PASS | **BORDERLINE** | **IMPROVED** (was TRIPLE FAIL) |
| Ch 22 | MARGINAL | MARGINAL | PASS | BORDERLINE | Same |
| Ch 24 | PASS | PASS | MARGINAL | PASS | Same |

**Improvement:** Ch 12 now PASSES (was FAIL). Ch 20 improved from TRIPLE FAIL to BORDERLINE.
**Post-fix update:** Ch 18 Illness test improved — neurological deficit language (F-07) and terminal language (F-20) both fixed. Ch 2 Illness test improved — duration marker removed (F-13).

---

## PRIOR FIX VERIFICATION — ALL 34 FROM MARCH 17 AUDIT

| Status | Count | Notes |
|--------|-------|-------|
| **Verified Applied** | 32 | All 4 CRITICAL, 12 HIGH, 12 MEDIUM, 4 LOW fixes confirmed in manuscript |
| **Partially Applied** | 1 | H-12 (Mom phone call trimmed but still 64 lines) |
| **Regression** | 1 | Ch 15 DID count: was flagged at 9, rewrite produced 11 indicators |

---

## EVIDENCE CHAIN: COMPLETE

All 10 evidence items verified present (unchanged from March 17).

## FIVE REVEALS: ALL PRESENT AND EXPLICIT

All 5 reveals verified present and unambiguous (unchanged from March 17).

---

## PROGRESSIVE READER SIMULATION RESULTS

### Twist Detection Timeline

| Twist | First Suspected | Became Confident | Reveal Ch | Chapters Early |
|-------|----------------|-----------------|-----------|---------------|
| Josh = killer | **Ch 7** | **Ch 11-14** | Ch 25 | 11-18 chapters |
| Eleanor = investigator | **Ch 2** | **Ch 7-10** | Ch 25-26 | 15-24 chapters |
| Eleanor = Lily's sister | **Ch 7** | **Ch 19** | Ch 26 | 7 chapters |
| Eleanor terminally ill | **Ch 15** | **Ch 20** | Ch 26 | 6 chapters |
| Mother at Thornewood | **Ch 3-5** | **Ch 21** | Ch 27 | 6 chapters |

### Misdirection Rating: **4/10**

### Key Spoiler Moments Identified:
1. **Biggest spoiler:** Ch 7/11 surveillance footage showing Josh in dissociative state producing "targeting notes" he doesn't remember
2. **Second biggest:** Ch 5 line 824 — "1998 murder at Thornewood" combined with Josh's age enables date math
3. **Third biggest:** Eleanor's genuine grief vs. manufactured predatory language is too obviously inverted

### What Works:
- **Best misdirection:** Ch 3 pill-crushing scene (truth hiding as suspicion)
- **Emotional impact survives spoiler detection:** "Knowing Josh is the killer intellectually is different from watching him watch the footage"
- **The novel succeeds as tragedy more than as mystery**

### Reader's Concluding Assessment:
> "The twists serve the character tragedy rather than being the point of the story. Even knowing Josh is the killer, watching him break down when confronted with the footage is devastating. Even knowing Eleanor is dying, her letter to Josh is gutting."

---

## NAME COLLISION ANALYSIS

| Name | Identity | Appearances | Risk |
|------|----------|-------------|------|
| Rachel Winters | Josh's literary agent | Lines 17, 105, 111, 497, 523, 525, 654, 662, 664, 878, 7909, 7915, 10309 | Primary Rachel — well established |
| Rachel Nguyen | Old friend from Portland | Line 6057 only | Single appearance — LOW confusion risk |
| "Rachel's contact" | Reference to Rachel Winters | Line 9390 | Eleanor POV referring to Winters — CLEAR in context |

**Verdict:** Two distinct Rachels is manageable. Rachel Nguyen appears only once and is clearly identified as "an old friend from Portland." No fix needed.

---

## COMPARISON: March 17 vs. March 18 Audit

| Metric | Mar 17 (Post-Fix) | Mar 18 (Fresh Audit) | Notes |
|--------|-------------------|---------------------|-------|
| CRITICAL | 0 (all fixed) | **4 new** | All in Ch 15 DID cluster + Ch 18 |
| HIGH | 0 (all fixed) | **8 new** | DID language, illness, investigator |
| MEDIUM | 0 (all fixed) | **15 new** | Refinements and patterns |
| LOW | 6 | **7** | Minor items |
| Prior fixes intact | — | **32/34 verified** | 1 partial, 1 regression |
| Ch 15 DID count | 7 | **11** | Regression during rewrite |
| Ch 20 diagnostic | TRIPLE FAIL | **BORDERLINE** | Significant improvement |
| Ch 12 diagnostic | FAIL | **PASS** | Fixed |
| Savvy reader detection | Not tested | **4/10 misdirection** | All twists caught early |

---

## PRIORITY FIX ORDER

### Tier 1: Must Fix (4 CRITICAL)
1. **F-03:** Ch 15 self-harm grounding — reduce 5 instances to 1 involuntary pain moment
2. **F-01:** Ch 15 "body override my mind" → panic/nausea language
3. **F-02:** Ch 15 "do something unforgivable" → remove system awareness
4. **F-04:** Ch 18 "other version pressing against consciousness" → remove alter language

### Tier 2: Should Fix (8 HIGH)
5. **F-05:** Ch 15 "primitive brain" / "violence underneath" → drug effect language
6. **F-06:** Ch 17 "remembering" → stronger "research" framing
7. **F-07:** Ch 18 "Fingers. Close. Grip. Lift." → simple stress tremor
8. **F-08:** Ch 12 Mother phone call — trim mission language
9. **F-09:** Ch 22 DID switching — reduce clinical detail
10. **F-10:** Ch 22 "prove what brokenness made him do" → predatory
11. **F-11:** Ch 23 denial volume — cut 2 impossibilities from document
12. **F-12:** Ch 8 cheek-biting → non-clinical taste description

### Tier 3: Polish (15 MEDIUM)
13-27. See MEDIUM findings table above. Most impactful: F-13 (headache "third day in a row"), F-15 (1998 date math), F-22 (Kevin Chen "former").

### Tier 4: Author Discretion (7 LOW)
28-34. See LOW findings table. Most notable: F-34 (Thornewood fate never addressed).

---

## STRUCTURAL ASSESSMENT

### What's Working Well
- **Eleanor's predatory voice** in Ch 2, 4, 6, 8, 16, 24 — consistently menacing
- **Josh's unreliable narration** — his conspiracy theories are internally logical
- **The kill kit (Ch 13)** — one of the most effective red herrings in the manuscript
- **Pill-crushing scene (Ch 3)** — truth disguised as suspicion; rated best misdirection
- **All 5 reveals** — explicit, complete, emotionally devastating
- **Evidence chain** — all 10 items present and solid
- **Epilogue structure** — dual POV, correct timing, all victims named
- **Legal framework** — Oregon GEI standards correctly applied
- **Prior fixes** — 32 of 34 verified intact

### What Needs Work (Post-Fix Status)
- ~~**Ch 15 is the single worst chapter**~~ — **FIXED:** DID indicators reduced from 11 to ~3
- ~~**Ch 18 investigator/illness clusters**~~ — **PARTIALLY FIXED:** illness cluster reduced, investigator structural
- **Misdirection does not survive genre-savvy reading** (4/10 rating) — structural, not fixable with line edits
- ~~**Cross-chapter headache pattern**~~ — **FIXED:** Ch 14 headache replaced with shoulder tension
- ~~**Denial volume in Ch 23**~~ — **FIXED:** Impossibility #5 removed, count reduced to ~11

### The Misdirection Question
The savvy reader rated misdirection 4/10 and caught every twist well before reveal. However, they also noted: **"The novel succeeds as tragedy more than as mystery."** The emotional architecture is the manuscript's true strength — the reveals devastate even when anticipated. This is actually a sign of mature storytelling: the twists serve the characters, not the other way around.

The author must decide: **Is 4/10 misdirection acceptable given the emotional payoff?** If the goal is pure mystery, significant restructuring would be needed. If the goal is literary thriller where the reader may suspect but is still gutted by the reveals, the current structure works.

---

## FINAL RATING

### Publication Ready — Minor Polish Recommended

The manuscript is **publication-ready** with the 4 CRITICAL fixes applied. The Ch 15 DID cluster is the only section that risks pulling a casual reader out of the intended experience. The investigator/illness clusters in Ch 18-20 are structural (they can't be eliminated without fundamentally rewriting Eleanor's role) and are adequately mitigated by predatory framing.

The 8 HIGH fixes would strengthen twist protection meaningfully. The 15 MEDIUM fixes are refinements that would improve the experience for very attentive readers.

**All 25 fixes applied.** 4 CRITICAL + 8 HIGH + 13 MEDIUM/LOW fixes completed. 9 findings skipped as acceptable (F-24 through F-30, F-32, F-33). Manuscript is publication-ready.

---

*Report generated March 18, 2026. Auditor: Claude Opus 4.6 (1M context)*
*Methodology: Phase 0 (10 grep scans) + Phase 1 (5 parallel agents) + Phase 1.5 (savvy reader) + Phase 2 (synthesis)*
*Runtime: ~25 minutes total*

---

## FIX APPLICATION LOG — March 18, 2026

| Fix | Finding | Chapter | Line | Status |
|-----|---------|---------|------|--------|
| 1 | F-13 | Ch 2 | 222 | APPLIED — removed "third day in a row" illness duration |
| 2 | F-14 | Ch 4 | 915 | APPLIED — removed "morning fog" medication side-effect |
| 3 | F-15 | Ch 5 | 824 | APPLIED — "1998" → "Late 1990s" |
| 4 | F-12 | Ch 8 | 2161 | APPLIED — cheek-biting → "old coffee and not enough water" |
| 5 | F-16 | Ch 10 | 2972 | APPLIED — removed "getting worse" progression |
| 6 | F-08 | Ch 12 | 3910-3914 | APPLIED — "finish what I started" → "more time here" |
| 7 | F-08 | Ch 12 | 3924 | APPLIED — "see this through" → "can't just leave" |
| 8 | F-17 | Ch 14 | 4580 | APPLIED — headache → shoulder tension |
| 9 | F-03a | Ch 15 | 4845 | APPLIED — "Physical pain. Anchor." → "Hold on." |
| 10 | F-05a | Ch 15 | 4861 | APPLIED — "primitive brain" → "Raw panic floods in" |
| 11 | F-01 | Ch 15 | 4881 | APPLIED — "body override my mind" → "nausea overwhelms me" |
| 12 | F-03b | Ch 15 | 4887 | APPLIED — "pain—sharp, real, grounding" → "shock of impact" |
| 13 | F-03c | Ch 15 | 4889 | APPLIED — "pain as a weapon" → "stubborn willpower" |
| 14 | F-02 | Ch 15 | 4893 | APPLIED — "do something unforgivable" → "black out again" |
| 15 | F-05b | Ch 15 | 4905 | APPLIED — "violence underneath" → "panic" |
| 16 | F-03d-e | Ch 15 | 4931-4955 | APPLIED — replaced entire self-harm grounding block |
| 17 | F-18 | Ch 17 | 5273 | APPLIED — removed headache observation, kept shaking |
| 18 | F-06 | Ch 17 | 5435 | APPLIED — "remembering" → "channeling research" |
| 19 | F-31 | Ch 17 | 5439 | APPLIED — broke murder/mother proximity |
| 20 | F-19 | Ch 17 | 5451 | APPLIED — "Done it. Remembered it." → research blurring |
| 21 | F-07 | Ch 18 | 5717 | APPLIED — "Fingers. Close. Grip. Lift." → "hands still unsteady" |
| 22 | F-04 | Ch 18 | 5803 | APPLIED — "other version pressing" → "volatile and dangerous" |
| 23 | F-20 | Ch 18 | 6091 | APPLIED — removed "borrowed time" |
| 24 | F-21 | Ch 20 | 6471 | APPLIED — clinical documentation → predatory framing |
| 25 | F-10 | Ch 22 | 6806 | APPLIED — "prove what brokenness" → "use what I knew" |
| 26a | F-09 | Ch 22 | 6820 | APPLIED — simplified sleepwalker description |
| 26b | F-09 | Ch 22 | 6842 | APPLIED — removed "glassy, unseeing eyes" repetition |
| 27 | F-11 | Ch 23 | 6945-6957 | APPLIED — deleted Impossibility #5, renumbered #6→#5 |
| 28 | F-23 | Ch 29 | 9799 | APPLIED — "arraignment after psych eval" → "initial appearance tomorrow" |
| 29 | F-22 | Ch 33 | 10219 | APPLIED — "Graduate student. Runner. Or he was" → "Former" |
| 30 | F-34 | Epilogue | ~10550 | APPLIED — added Thornewood fate (sold, will be demolished) |

**Skipped (9):** F-24, F-25, F-26, F-27, F-28, F-29, F-30, F-32, F-33 — reviewed and determined acceptable.

**Verification:** All 25 fixes confirmed via grep scans. No forbidden terms introduced. No regressions on 12 previously-fixed CRITICAL strings.
