# Comprehensive Fresh Audit Report — March 19, 2026

**Manuscript:** Hard Thrust by Joshua Cox
**File:** `FULL_MANUSCRIPT.txt` (~10,548 lines, 33 chapters + epilogue)
**Methodology:** Trust-nothing fresh audit. 16 automated grep scans (Phase 0), 5 parallel deep-read agents (Phase 1), savvy reader simulation (Phase 1.5), cross-cutting consistency checks (Phase 2).
**Runtime:** ~50 minutes total

---

## Executive Summary

| Category | Count |
|----------|-------|
| CRITICAL spoiler leaks | **0** |
| HIGH findings (must fix) | **4** |
| MEDIUM findings (strongly recommended) | **7** |
| LOW findings (optional/informational) | **8** |
| Consistency issues | **1** (documentation only) |
| Overused phrases | **1** ("finish this" at 13, target <10) |

**Headline result:** All four twists now **PASS** all protection thresholds at every checkpoint. The previously failing twists (T2 at 17%, T4 at 7%) have been brought within targets (T2 at 9%, T4 at 3%) by the March 18 audit fixes. The manuscript is in strong shape for publication. Four HIGH-severity findings and seven MEDIUM findings remain as opportunities for further tightening.

---

## Phase 0: Automated Grep Scan Results

### Twist 3 (Josh = Killer) — Scanned lines 1–7851

| # | Target | Matches (pre-Ch 25) | Verdict |
|---|--------|---------------------|---------|
| 1 | DID/dissociation language | 0 | CLEAN |
| 2 | Killer identity leaks | 0 (L6244 "She was the killer" = correct misdirection) | CLEAN |
| 3 | Body autonomy / DID clusters | L3653 "lost time", L4451 "no lost time" — both contextualized as drugging narrative | LOW |
| 4 | Blackout/crime timing correlation | 0 | CLEAN |
| 5 | Mirror/identity confusion | L3718 Eleanor "reflection in the mirror is a stranger" — about her deception, not DID | LOW |
| 6 | Denial spoilers | 0 | CLEAN |

### Twist 1 (Eleanor = Sick) — Scanned lines 1–8216

| # | Target | Matches (pre-Ch 26) | Verdict |
|---|--------|---------------------|---------|
| 7 | Cancer/illness language | 0 | CLEAN |
| 8 | Symptom clusters | Many matches — per-chapter analysis by agents (see Phase 1) | See below |
| 9 | Urgency/death language | 0 | CLEAN |

### Twist 2 (Eleanor = Sister) — Scanned lines 1–8216

| # | Target | Matches (pre-Ch 26) | Verdict |
|---|--------|---------------------|---------|
| 10 | Familial language (sister/Ashford) | 0 | CLEAN |
| 11 | Grief/familial voice | 0 in Eleanor POV before Ch 26 | CLEAN |
| 12 | Investigator language | Many matches — per-chapter analysis by agents (see Phase 1) | See below |

### Twist 4 (Mother = Thornewood) — Scanned lines 1–8749

| # | Target | Matches (pre-Ch 27) | Verdict |
|---|--------|---------------------|---------|
| 13 | Mother/Thornewood connection | L5435 "mother died when I was three" (no Thornewood link) | LOW |

### Cross-Cutting — Full file

| # | Target | Result | Verdict |
|---|--------|--------|---------|
| 14 | Name boundary enforcement | "Marcus Webb" first at L7945 (Ch 25), "Eleanor Ashford" first at L8686 (Ch 26), "Rebecca Holloway" first at L9191 (Ch 27) | CLEAN |
| 15 | Victim count consistency | Always 6 total (5 dead + 1 survivor Kevin Chen) across all mentions | CLEAN |
| 16 | Overused phrases | "finish this" = **13** (OVER target <10), "hands shak" = ~9, "chest tighten" = 7 | MEDIUM |

---

## Phase 1: Deep-Read Agent Findings

### Agent A: Chapters 1–8 (SETUP)

**DID Cluster Counts:**

| Chapter | Count | Items |
|---------|-------|-------|
| Ch 1 (Josh) | 0 | — |
| Ch 2 (Eleanor) | 0 | — |
| Ch 3 (Josh) | 0 | — |
| Ch 4 (Eleanor) | 0 | — |
| Ch 5 (Josh) | 2 | L1440 "lost track of time" (writing flow), L1620 memory gap (wine) |
| Ch 6 (Eleanor) | 0 | — |
| Ch 7 (Josh) | 2 | L1991 "constructed identity", L1993 "couldn't swear I'd been in this chair" |
| Ch 8 (Eleanor) | 0 | — |

**Eleanor Diagnostic Tests:**

| Chapter | Stranger | Motive | Illness | Symptoms |
|---------|----------|--------|---------|----------|
| Ch 2 | PASS | PASS | PASS | 0 |
| Ch 4 | PASS | PASS | PASS | 1 (insomnia) |
| Ch 6 | PASS | PASS | PASS | 1 (unsteady hand → caffeine) |
| Ch 8 | PASS | PASS | PASS | 1 (trembling → guilt) |

**Verification Items:**
- Physical descriptions (Josh 6'5"/copper/blue-green, Eleanor 5'8"/dark/pale green): **CORRECT**
- L824 Thornewood history says "Undated": **CORRECT**
- Cottage = single-story with loft, ladder access: **CORRECT**
- Shared dialogue consistency (Ch 1 vs Ch 2 meeting): **PERFECT MATCH**
- L1991 "pen names" passage: **HIGH risk** (see findings below)

### Agent B: Chapters 9–14 (ESCALATION)

**DID Cluster Counts:**

| Chapter | Count | Items |
|---------|-------|-------|
| Ch 9 (Josh) | 3 | Deleted footage, contradictory journal, self-investigation (AT THRESHOLD) |
| Ch 10 (Eleanor) | 0 | — |
| Ch 11 (Josh) | **6** | Mirror-stranger, 3hr unremembered typing, targeting notes, lost time waking, typing style match, "What am I?" (**EXCEEDS THRESHOLD**) |
| Ch 12 (Eleanor) | 2 | Eleanor observing Josh's gaps (acceptable) |
| Ch 13 (Josh) | 2 | Deja vu, "I scare myself" |
| Ch 14 (Eleanor) | 2 | Eleanor describes 7hr blackout (acceptable) |

**Eleanor Diagnostic Tests:**

| Chapter | Stranger | Motive | Illness | Symptoms |
|---------|----------|--------|---------|----------|
| Ch 10 | PASS | PASS | PASS | 1 (hand tremor → cold) |
| Ch 12 | PASS | PASS | PASS | 2 (headache + exhaustion — BORDERLINE) |
| Ch 14 | PASS | PASS | PASS | 1 (shoulders → tension) |

**Verification Items:**
- L3381 "typing style wasn't mine" rewrite: **VERIFIED FIXED** — now reads "But I didn't remember writing any of this"
- L4098 "mask that slipped" rewrite: **VERIFIED FIXED** — now reads "empty and mechanical, like he'd checked out for a second"
- Josh paranoia direction: **CORRECTLY at Eleanor** — brief self-questioning properly redirected
- Guest book missing pages: **CORRECTLY AMBIGUOUS** — points at unknown party
- Timeline Nov 9–Dec 12: **CONSISTENT**

### Agent C: Chapters 15–22 (DANGER ZONE)

**DID Cluster Counts:**

| Chapter | Count | Items | Status |
|---------|-------|-------|--------|
| Ch 15 (Josh) | **11** | Tunnel vision, involuntary hand movements, fighting consciousness x2, "not memories" x3, "panic feels familiar", aggression surge, second episode | CRITICAL density (but framed as drugging) |
| Ch 16 (Eleanor) | 1 | Observes Josh's gap | PASS |
| Ch 17 (Josh) | **6** | Writing from unknown source, "something buried surfacing", details "came from somewhere real", blank where memory should be, "precision too effortless", "the blackouts" | CRITICAL density |
| Ch 18 (Eleanor) | 1 | Observes Josh's episodes | PASS |
| Ch 19 (Josh) | 3 | Scratches + confusion, footage gaps, explicit correlation | AT THRESHOLD |
| Ch 20 (Eleanor) | 2 | Observes Josh's gaps, "wasn't the whole truth" | PASS |
| Ch 21 (Josh) | **4** | No memory of arrival, raw throat, aching muscles, scratches/dirt | EXCEEDS THRESHOLD |
| Ch 22 (Eleanor) | 2 | "somewhere else entirely", stops/blinks/confused | PASS |

**Eleanor Diagnostic Tests:**

| Chapter | Stranger | Motive | Illness | Symptoms |
|---------|----------|--------|---------|----------|
| Ch 16 | PASS | PASS | PASS | 0 |
| Ch 18 | PASS | PASS (borderline) | PASS | Tremor x4 + weakness (BORDERLINE) |
| Ch 20 | MARGINAL PASS | MARGINAL PASS | PASS | 0 |
| Ch 22 | PASS | PASS | PASS | 0 |

**Verification Items:**
- L6816: **CORRECT** — "somewhere else entirely" (not "sleepwalking")
- L6838: **CORRECT** — "what I'd seen that night" (not "those outbursts")
- Ch 17 murder-writing: Ambiguous as intended — leans imagination with dangerous undertones
- Ch 18 Eleanor: Reads as STALKER (correct), not investigator
- Ch 21 photo scene (L6677-6681): Emotional reaction, reframed as predatory by Ch 22 callback. LOW risk.
- Mother references Ch 17: 3 total (acceptable, no Thornewood connection)

### Agent D: Chapters 23–28 (REVEALS)

**Reveal Fact Verification — ALL MATCH Story Bible:**

| Reveal | Status |
|--------|--------|
| Marcus Webb identity, method, 6 victims | MATCH |
| Glioblastoma, 18 months, Temozolomide | MATCH |
| Eleanor = Lily Ashford's sister, maiden name Ashford | MATCH |
| Rebecca Holloway, murdered 1998, Josh age 3, father did it | MATCH |
| Kevin Chen: wheelchair, age 34, no recognition | MATCH |

**Boundary Verification:**

| Reveal | First Explicit Reference | Chapter | Status |
|--------|------------------------|---------|--------|
| "sister" (Eleanor–Lily) | L8240 | Ch 26 (23 lines in) | CLEAN |
| Rebecca Holloway + Thornewood + 1998 | L9191 | Ch 27 | CLEAN |
| Marcus Webb | L7945 | Ch 25 | CLEAN |
| Eleanor Ashford (real name) | L8686 | Ch 26 | CLEAN |

**Line-Specific Fixes Verified:**
- L8568: **"You stopped yourself"** (not "fought off") ✓
- L8572: **"five-year-old security tape"** (not "four-year-old") ✓
- L8542: Premature mother-murder detail **successfully moved to Ch 27** ✓
- All post-Feb-2025 refs: **"five years ago"** throughout ✓

**Ch 23-24 Pre-Reveal Scan:** CLEAN (no DID, illness, sister, or mother-Thornewood language)

**Timeline Feb 28–Mar 15:** INTERNALLY CONSISTENT

### Agent E: Chapters 29–33 + Epilogue (AFTERMATH)

**All verification items PASS:**

| Check | Result |
|-------|--------|
| Victim list (L10536): 6 names, correct spelling | VERIFIED |
| "Five who should be alive. One who barely is." math | CORRECT (5 dead + 1 survivor) |
| Eleanor surname post-reveal | Appropriate by context (Moore by Kevin Chen, Ashford by family/legal) |
| Kevin Chen: wheelchair, age 34, no recognition | VERIFIED |
| Eleanor dies Apr 3, Josh learns Jun 15 at sentencing | VERIFIED, no premature leaks |
| Epilogue Pt 1 (Mar 29): Eleanor visits Lily's grave | VERIFIED |
| Epilogue Pt 2 (Sep 2025): Josh in psychiatric facility | VERIFIED |
| Photo-scene callback at L9191 | VERIFIED |
| "Four days" at L9909 | VERIFIED CORRECT (Mar 15→Mar 19) |

**No CRITICAL, HIGH, or MEDIUM findings. Section is publication-ready.**

---

## Phase 1.5: Savvy Reader Simulation

| Checkpoint | T1 (sick) | T2 (sister) | T3 (killer) | T4 (mother) |
|-----------|-----------|-------------|-------------|-------------|
| After Ch 8 | 3% **PASS** | 3% **PASS** | 8% **PASS** | 1% **PASS** |
| After Ch 14 | 5% **PASS** | 4% **PASS** | 20% **PASS** | 2% **PASS** |
| After Ch 22 | 10% **PASS** | 8% **PASS** | 42% **PASS** | 3% **PASS** |
| After Ch 24 | 12% **PASS** | 9% **PASS** | 48% **PASS** | 3% **PASS** |

**Thresholds:**

| Twist | Target | Previous Audit | Current | Improvement |
|-------|--------|---------------|---------|-------------|
| T1 (sick) | <15% at Ch 24 | ~12% PASS | 12% PASS | Stable |
| T2 (sister) | <10% at Ch 24 | 17% **FAIL** | 9% **PASS** | -8 pts |
| T3 (killer) | <50% at Ch 24 | 48% BORDERLINE | 48% PASS | Stable |
| T4 (mother) | <5% at Ch 24 | 7% **FAIL** | 3% **PASS** | -4 pts |

**Key Passages Scored:**
- L3377-3389 (surveillance notes): T3 +5% — Josh finds targeting notes he doesn't remember writing
- L6677-6681 (photo reaction): T2 +5% — Eleanor's emotional flicker, reframed as predatory by Ch 22
- L6816-6824 (blackout attack): T3 +8% — strongest single T3 signal
- L5262+ (murder-writing): T3 +5% — Josh writes with suspicious precision
- Eleanor symptom accumulation: T1 +7% cumulative across Ch 2–22

**Risk Areas (not failures):**
- T2 at 9% (threshold 10%): One point of margin. L6677-6681 is the single biggest signal. Any additional familial language in Eleanor POV before Ch 26 could tip it over.
- T3 at 48% (threshold 50%): Two points of margin. By design — the twist should be almost guessable before Ch 25.

---

## Phase 2: Cross-Cutting Consistency Checks

| Check | Status | Details |
|-------|--------|---------|
| "Thornewood" spelling | CLEAN | No instances of "Thornwood" |
| "Four years" / "five years" | CLEAN | "Four" in Ch 1–22 (Oct 2024–Feb 2025), "Five" in Ch 25+ (post-Feb 2025) |
| L824 Thornewood history | CORRECT | Says "Undated" (not "Late 1990s") |
| Cottage: ladder to loft | CLEAN | Always "ladder", never "stairs" |
| Victim count | CONSISTENT | Always 6 total (5 dead, 1 survivor) |
| Name boundaries | CLEAN | All reveal names appear only after reveal chapters |
| Rachel Winters vs Rachel Nguyen | CORRECT | Two different characters, intentional |
| Josh age math | CORRECT | Born 1995, age 29 in Oct 2024, was 3 in 1998 |
| Eleanor diagnosis timeline | CORRECT | 18 months before Mar 2025 = Sep 2023 |
| Kevin Chen age | CORRECT | 28 in Nov 2019, 34 at June 2025 sentencing |
| Day-of-week alignment | CORRECT | Nov 14 = Thursday, Mar 29 = Saturday |
| L2009: Lily described as "blonde" | NOTE | Story Bible doesn't specify Lily's hair color. Eleanor has "dark, nearly black" hair. Siblings can differ — not a contradiction, but should be documented as canon. |

---

## Prioritized Fix List

### Priority 1: HIGH Findings (Must Fix)

#### Fix 1 — L1991: "Constructed identity" DID signal
- **Line:** 1991
- **Current:** `"Other times it seemed like I'd constructed this entire identity out of nowhere. Especially the early stuff — the pen names I'd used before building any real reputation"`
- **Proposed:** `"Other times it felt like the career had built itself around me. Especially the early stuff — the pen names, the anonymous articles, back when I was just another voice writing about other people's tragedies"`
- **Twist:** T3 (Josh = killer)
- **Severity:** HIGH — "Constructed this entire identity" echoes DID alternate-identity creation; combined with L1993 "couldn't swear I'd been in this chair," creates a 2-indicator cluster in one paragraph.
- **Regression check:** Does not introduce new spoiler. Preserves writer backstory. Does not break timeline. Does not contradict.

#### Fix 2 — L6415: "Evidence room" in Eleanor POV
- **Line:** 6415
- **Current:** `"the one that led to my evidence room"`
- **Proposed:** `"the one that led to my locked room"`
- **Twist:** T2 (Eleanor = investigator/sister)
- **Severity:** HIGH — A predator/stalker would call it "my room" or "my locked room," not "evidence room" (explicit investigator language).
- **Regression check:** Does not introduce new spoiler. Maintains continuity (it IS locked). Does not weaken scene. Does not contradict — later references use "locked room" or "evidence room" post-reveal.
- **Note:** Also check L6877 ("EVIDENCE OF MANIPULATION") — this is Josh's document title in his POV, which is correct (Josh IS investigating).

#### Fix 3 — L4875: "Panic feels familiar"
- **Line:** 4875
- **Current:** `"But the panic feels familiar in a way that terrifies me."`
- **Proposed:** `"But the intensity terrifies me."`
- **Twist:** T3 — "Familiar" implies Josh has experienced dissociative episodes before, undermining the cover story that this is a one-time drugging event.
- **Severity:** HIGH
- **Regression check:** Does not introduce new spoiler. Does not break timeline. Slightly reduces dramatic tension but Ch 15 has 10 other indicators. Does not contradict.

#### Fix 4 — Ch 11 DID Density Reduction (6 → 4 indicators)
- **Lines:** 3319, 3693
- **Current L3319:** `"The mirror showed a stranger."`
- **Proposed L3319:** `"The mirror showed someone who hadn't slept in days."` (redirects from identity confusion to exhaustion)
- **Current L3693:** `"What am I?"`
- **Proposed L3693:** `"What is happening to me?"` (redirects from identity to experience)
- **Twist:** T3
- **Severity:** HIGH — 6 DID indicators in one chapter is double the threshold. The 3hr unremembered typing session and targeting notes are plot-critical and must stay.
- **Regression check:** Both changes preserve emotional impact while removing identity-confusion signals. "What is happening to me" keeps Josh's horror but directs it at events rather than selfhood. "Hadn't slept in days" is consistent with his established insomnia.

---

### Priority 2: MEDIUM Findings in Danger Zone (Ch 15–22)

#### Fix 5 — L5715: Eleanor "weakness" episode
- **Line:** 5715
- **Current:** `"The weakness passed. Thirty seconds, maybe less."`
- **Proposed:** `"The shaking eased. Thirty seconds, maybe less."`
- **Twist:** T1 — "The weakness passed" with specific duration reads as a discrete medical event (syncope/TIA). Combined with 4 mentions of hand-shaking in the same 10 lines, this creates a 2-symptom cluster (tremor + generalized weakness) in Eleanor's chapter, exceeding the 1-symptom-per-chapter rule.
- **Regression check:** Preserves scene flow. "Shaking eased" tracks the established symptom (nerves) without adding a new one.

#### Fix 6 — L4873: Consolidate triple denial
- **Line:** 4873
- **Current:** `"These flashes aren't memories. Can't be. The mind doesn't work that way, not under a chemical assault like this. This is just the drug. Eleanor's drug. Flooding my system with whatever cocktail she's perfected over months."`
- **Proposed:** Remove this entire paragraph. The denials at L4863 ("Not memories — couldn't be memories") and L4872 ("Not real. Can't be real") already establish Josh's rationalization. The third denial is redundant and triggers "lady doth protest too much" for savvy readers.
- **Twist:** T3
- **Regression check:** Removes ~4 lines. The two remaining denials are sufficient. Does not weaken the scene.

#### Fix 7 — L5330-5332: "Came from somewhere real"
- **Lines:** 5330-5332
- **Current:** `"the details were right. Were true. They came from somewhere real, even if I couldn't name the source."`
- **Proposed:** `"the details felt uncomfortably right. Maybe just the immersive writing process — losing yourself until fiction feels true."`
- **Twist:** T3 — In Josh's private monologue (not performance), "came from somewhere real" is an explicit admission that the murder details have a real source. This is the strongest non-reveal T3 signal in the danger zone.
- **Regression check:** Preserves the unsettling quality. The "immersive writing" explanation is consistent with Josh's established writer identity.

#### Fix 8 — L6469-6470: "Wasn't the whole truth"
- **Lines:** 6469-6470
- **Current:** `"What if the person sitting across from me at dinner wasn't the whole truth?"`
- **Proposed:** `"What if the man sitting across from me at dinner was hiding something darker than insomnia?"`
- **Twist:** T3 — "Wasn't the whole truth" implies there's another person/identity inside Josh. Eleanor should question his BEHAVIOR, not his IDENTITY.
- **Regression check:** Keeps Eleanor's suspicion directed at Josh's actions. "Darker than insomnia" maintains mystery.

---

### Priority 3: MEDIUM Findings Elsewhere

#### Fix 9 — L3848: Eleanor headache in Ch 12
- **Line:** 3848
- **Current:** `"My head throbbed. Sharp, insistent. Too many sleepless nights."`
- **Proposed:** `"My thoughts were scattered. Too many sleepless nights."`
- **Twist:** T1 — Eleanor's headache plus repeated exhaustion references creates a 2-symptom cluster in her POV chapter. "Thoughts scattered" conveys the same exhaustion without a physical symptom that retrospectively signals brain cancer.
- **Regression check:** Does not introduce new spoiler. Does not weaken the scene.

#### Fix 10 — "Finish this" overuse reduction
- **Current count:** 13 occurrences (target: <10)
- **Action:** Replace 4 of the less dramatically weighted uses with alternatives:
  - L2972: "finish this" → "see this through"
  - L4056: "finish this" → "end this"
  - L5690: "finish this" → "see this through"
  - L6561: "finish this" → "act now"
- **Note:** L999 ("finish this section") is mundane usage and not part of the pattern. The dramatic "finish this" at key moments (L3830, L6842, L8308, L8668) should remain — they carry thematic weight.
- **Regression check:** Alternatives preserve meaning. Does not affect twist protection.

---

### Priority 4: LOW Findings (Optional / Author's Discretion)

| # | Line | Issue | Recommendation |
|---|------|-------|----------------|
| 11 | 2009 | Lily described as "blonde" — Story Bible doesn't specify | Document Lily's hair as blonde in Story Bible for consistency |
| 12 | 1262-1278 | Eleanor's depersonalization conversation (Ch 5) | Monitor only — adequately framed as isolation effects |
| 13 | 1440-1443 | "Hours can just vanish" (Ch 5) | Monitor only — attributed to writing flow |
| 14 | 1620-1631 | Memory gap after dinner (Ch 5) | Monitor only — attributed to wine |
| 15 | 3718 | Eleanor "reflection is a stranger" (Ch 12) | No fix needed — about deception, not DID |
| 16 | 5435 | Josh mentions mother died when he was 3 (Ch 17) | No fix needed — no Thornewood connection |
| 17 | 824 | "Undated" vs Story Bible's "1998" for Thornewood murder | Keep "Undated" — actually better for twist protection |
| 18 | 5527 | "Four years ago" in Ch 17 (Dec 2024) | LOW — colloquially acceptable (4 yrs 10 months); could change to "almost five years ago" |

---

## DID Cluster Density Map (All Josh Chapters)

| Chapter | Count | Status | Key Items |
|---------|-------|--------|-----------|
| Ch 1 | 0 | CLEAN | — |
| Ch 3 | 0 | CLEAN | — |
| Ch 5 | 2 | OK | Lost time (writing flow), memory gap (wine) |
| Ch 7 | 2 | OK | "Constructed identity" (→ fix), "couldn't swear" |
| Ch 9 | 3 | AT THRESHOLD | Deleted footage, journal discrepancy, self-investigation |
| Ch 11 | **6** | **EXCEEDS** | Mirror, 3hr typing, targeting notes, lost time, style match, "What am I?" (→ fix 2 items) |
| Ch 13 | 2 | OK | Deja vu, "I scare myself" |
| Ch 15 | **11** | **EXTREME** | Full fugue episode (framed as drugging; structurally necessary) |
| Ch 17 | **6** | **EXCEEDS** | Murder-writing scene (structurally necessary) |
| Ch 19 | 3 | AT THRESHOLD | Scratches, footage gaps, timing correlation |
| Ch 21 | **4** | **EXCEEDS** | Full blackout (structurally necessary) |
| Ch 23 | 0 | CLEAN | Josh accuses Eleanor, no self-questioning |

**Assessment:** Chapters 15, 17, and 21 exceed the 3-indicator threshold but are structurally necessary scenes (fugue episode, murder-writing, blackout). All are covered by Josh's drugging narrative, and the savvy reader simulation shows T3 stays within the 50% threshold despite them. Chapter 11 is the most actionable (Fix 4 reduces it from 6 → 4).

---

## Eleanor Symptom Map (All Eleanor Chapters, Pre-Ch 26)

| Chapter | Count | Items | Status |
|---------|-------|-------|--------|
| Ch 2 | 0 | — | CLEAN |
| Ch 4 | 1 | Insomnia → isolation | OK |
| Ch 6 | 1 | Unsteady hand → caffeine | OK |
| Ch 8 | 1 | Trembling → guilt | OK |
| Ch 10 | 1 | Hand tremor → cold | OK |
| Ch 12 | **2** | Headache + exhaustion (→ fix) | BORDERLINE |
| Ch 14 | 1 | Shoulders → tension | OK |
| Ch 16 | 0 | — | CLEAN |
| Ch 18 | 1–2 | Tremor x4 + "weakness passed" (→ fix) | BORDERLINE |
| Ch 20 | 0 | — | CLEAN |
| Ch 22 | 0 | — | CLEAN |
| Ch 24 | 1 | Fingers → cold | OK |

**With proposed fixes 5 and 9 applied:** All chapters comply with max-1-symptom rule.

---

## Savvy Reader Confidence Chart (Final)

```
T1 (Eleanor sick)     ▓░░░░░░░░░░░░░░  12% / 15% target  PASS
T2 (Eleanor sister)   ▓░░░░░░░░░░░░░░░  9% / 10% target   PASS (1pt margin)
T3 (Josh killer)      ▓▓▓▓▓▓▓░░░░░░░░  48% / 50% target  PASS (2pt margin)
T4 (Mother Thornewood)▓░░░░░░░░░░░░░░░  3% / 5% target    PASS
```

**If proposed fixes are applied**, estimated improvement:
- T3: 48% → ~45% (fixing L1991, L4875, Ch 11 density, L5330-5332)
- T2: 9% → ~8% (fixing L6415 "evidence room")
- T1: 12% → ~10% (fixing L5715, L3848)
- T4: 3% → 3% (no changes needed)

---

## Reveal Architecture Verification

| Check | Status |
|-------|--------|
| All reveal facts match Story Bible | VERIFIED |
| L8568 "You stopped yourself" (not "fought off") | VERIFIED |
| L8572 "five-year-old" tape (not "four") | VERIFIED |
| Sister boundary: first "sister" in Ch 26 (L8240) | VERIFIED |
| Mother boundary: first Rebecca Holloway + Thornewood in Ch 27 (L9191) | VERIFIED |
| L8542 premature mother detail moved to Ch 27 | VERIFIED |
| "Five years ago" in all post-Feb-2025 references | VERIFIED |
| Photo-scene callback at L9191 | VERIFIED |
| Kevin Chen: wheelchair, age 34, no recognition | VERIFIED |
| Eleanor death: Apr 3, Josh learns Jun 15 | VERIFIED |
| Victim list (L10536): all 6 names, correct spelling | VERIFIED |
| "Five who should be alive. One who barely is." math | VERIFIED (5 dead + 1 survivor) |
| "Four days" at L9909 (Mar 15 → Mar 19) | VERIFIED |
| Epilogue Pt 1 (Mar 29): Eleanor visits Lily's grave | VERIFIED |
| Epilogue Pt 2 (Sep 2025): Josh in facility | VERIFIED |

---

## Final Publication-Readiness Verdict

**The manuscript PASSES the fresh trust-nothing audit.**

All four twists are protected within their target thresholds at every checkpoint. The reveal architecture is intact — all boundaries are properly maintained, all canon facts match the Story Bible, and all previously flagged fixes have been verified as applied.

**Remaining work:**
- **4 HIGH fixes** (estimated 15 minutes to apply)
- **6 MEDIUM fixes** (estimated 20 minutes to apply)
- **1 overuse reduction** (estimated 10 minutes)
- **1 Story Bible documentation update** (Lily's hair color)

**With these fixes applied, the manuscript achieves comfortable margin on all twist thresholds and eliminates all remaining cluster violations above the 3-indicator threshold (except for the structurally necessary fugue/blackout/murder-writing scenes in Ch 15, 17, and 21, which are covered by the in-narrative drugging explanation and do not breach the savvy reader's 50% ceiling).**

---

*Audit conducted March 19, 2026. Methodology: 16 grep scans + 5 parallel deep-read agents + savvy reader simulation + cross-cutting consistency checks. Total runtime: ~50 minutes.*
