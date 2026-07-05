# Hard Thrust — Comprehensive Audit Final Report
**Date:** 2026-07-05  
**Scope:** character looks/traits, contradictions, timeline, plot holes, spoilers, and misc errors across the full 10,462-line manuscript + front/back matter.  
**Method:** automated scans → diff triage → 17-agent fan-out (6 chapter ranges, 7 cross-manuscript specialists, 3 twist-blind reader simulations, 1 matter pass) → merge/dedup → double-skeptic adversarial verification (refute-by-default) → fix drafting with independent spoiler+continuity vet stamps → auto-apply of passing fixes. Verification and fixing ran on Opus.

## Headline

- **263 raw findings** → **187 survived** adversarial verification (178 confirmed, 8 intentional-by-design, 1 refuted).
- **85 fixes applied & committed** (13 HIGH, 41 MEDIUM, 31 LOW) — every one passed dual vetting. Commit `260bfaf`.
- **35 confirmed issues held for your decision** (all 4 CRITICALs + structural chronology tangles + the reveal police-ID cluster), plus 6 marketing/metadata items and 2 drafts needing rework — see the Fix Proposal.
- Twist protection **held or improved**: all pre-reveal exact-term scans still clean; the DID-signal clusters previously flagged in Ch 11/13/17 are eliminated.
- **Biggest theme:** the unaudited Apr 18 edits changed individual scenes without re-checking their partner scenes, creating mutually-exclusive accounts of several nights (Nov 8, Dec 10–12) and a duplicated confrontation. These are the held CRITICAL/HIGH items.

## What changed since the last audit

The working copy carried ~27 uncommitted edits from Apr 18 (11 approved audit fixes + unaudited content edits). I committed them as the pre-audit baseline (`1253d17`) and audited them as real text. Triage of those edits confirmed:
- **H1:** REFUTED on the core claim (no text calls Dec 12 the first blackout), but the same chunk contains a real continuity FINDING (time-of-day contradiction), and the hypothesis's chapter labels were wrong twice.
- **H2:** REFUTED — no duplicated-paragraph artifact exists; the current Ch 10 text reads cleanly.
- **H3:** CONFIRMED as located (with corrected chapters) — and the recounting chunks AGREE with each other; no cross-scene contradiction.

## Findings by dimension (confirmed)

| Dimension | Applied | Held/other |
|---|---|---|
| appearance | 2 | 1 |
| canon | 3 | 11 |
| contradiction | 21 | 24 |
| encoding | 2 | 3 |
| other | 0 | 8 |
| plot-logic | 13 | 8 |
| pov | 5 | 2 |
| prose | 12 | 4 |
| setup-payoff | 3 | 12 |
| spoiler-T1 | 6 | 4 |
| spoiler-T2 | 0 | 2 |
| spoiler-T3 | 1 | 3 |
| spoiler-T4 | 0 | 1 |
| timeline | 17 | 10 |

## Spoiler posture (post-fix, recomputed boundaries T1≤L7720, T2/T3≤L8097, T4≤L8630)

- Exact-term scans **clean**: Marcus Webb (0), illness/cancer (0), Lily's-sister (0), 1998 (0), M+L decode (0).
- DID-cluster scan: Ch 11/13/17 clusters (previously 4/3/3 indicators) **eliminated** by the applied drug-attribution reframes. Only Ch 7 retains 3, of which one is the benign "part of me" idiom (false positive).
- No applied fix introduced a new forbidden term or pushed any scene to a 3+ cluster (verified by the spoiler vet stamp on each).

## Blind savvy-reader simulation (the T1 exposure score)

Three personas read Ch 1–24 with no knowledge of the twists, giving line-cited confidence at forced checkpoints. **T1 (Josh-is-the-killer) median confidence: 45% after Ch 8 → 65% after Ch 14 → 88% after Ch 22.** This is above the <50% target, and consistent with prior audits' conclusion that **T1 exposure is structural** — driven by the fugue-state break-in, Josh's "fiction" containing insider murder detail, surveillance-of-self, and above all the chapter title **"BLANK SPACES" (Ch 21)**, which all three readers named as the single loudest tell. The 85 applied fixes reduced DID *cluster density* but do not move the structural drivers; lowering T1 below 50% requires author-level structural choices (retitling chapters, reducing the self-surveillance reveal runway), listed as held decisions. Full per-persona scorecard: `scratchpad/07_savvy_scorecard.md`.

## Eleanor diagnostic tests (predator-not-investigator, per even chapter)

- 16 of 23 Eleanor sections PASS all three tests (Stranger/Motive/Illness). Remaining are BORDERLINE on one axis (mostly Motive), none FAIL outright except one flagged section now addressed. She reads as threat, not investigator, throughout the pre-reveal book.

## Appendix 1 — Refuted / intentional (do not re-flag next pass)

- **INTENTIONAL** `matter-3` (Ch BOOK_DESCRIPTION.md L19): Verbatim at BOOK_DESCRIPTION.md L19/L35. Explicitly documented design: file's own Notes L57 ('readers should suspect Eleanor') and L58 ('hints at the twist without revealing it') bless it. Finding self-states 'a deliberate author decision, 
- **REFUTED** `spec_plot-logic-8` (Ch 3 L824): Quote verified L824. But the premise ('no in-text reason given') is false: L6579 'Files sealed because I was a minor' and L6583 'For years. Hit dead ends every time' supply exactly that reason for the undated/unnamed entry and the unknown n
- **INTENTIONAL** `spec_plot-logic-4` (Ch 21 L6579): Verified deliberate, not a leak. L6579 lacks the forbidden combo-forbidden-terms.md forbids only mother+Thornewood+1998 together (L105), lists vague childhood trauma as Allowed (L112). It's the Jan8 PLANT->PAYOFF; reveal L9091 delivers LOCA
- **INTENTIONAL** `range_B-21` (Ch 12 (opener, vs Ch 11 ending) L3682): Deliberate T1 plant. Verified L3682-3684: Josh collapses unconscious in the library (L3661), and the opener notes 'the library lights had gone dark before midnight and not come back on' — deniable pre-reveal ('bad night'), fugue-coded post-
- **INTENTIONAL** `spec_canon_v1-7` (Ch 12 L3840): Mildest form of the sanctioned drugging misdirection. Verified L3840 ('like something in the food or wine was pulling him under'). forbidden-terms allows reframing blackouts as drugging (L93/L202); Eleanor's POV leans harder elsewhere (L461
- **INTENTIONAL** `range_D1-17` (Ch 15 (outside D1 range — discovered while verifying M+L resolution) L4719): Duplicated tower-room M+L beat is deliberate: Ch16 L5222 explicitly states 'He had no memory of the carving. Didn't remember the tower' — the Dec revisit is an amnesia demo (T1 DID, drug-attributed). Quotes confirmed (L4719, L4783). The wit
- **INTENTIONAL** `matter-8` (Ch 21 L6560): Titles confirmed (L6560 'BLANK SPACES', L3020 'FRACTURES'); blurb 'losing time/blacking out' confirmed (BOOK_DESCRIPTION L19/L33). But forbidden-terms ALLOWS these (L93 blackouts, L177 memory gaps/lost time, L237 Allowed Misdirection). They
- **INTENTIONAL** `range_D1-11` (Ch 24 L7694): Both poles verified: L7343 'documented since I started looking' vs L7694 'been documenting for two years' (Eleanor's Ch24 POV retelling). Neighbors are verbatim echoes (L7315/7660, L7321/7666, L7335/7686), confirming the deliberate dual-POV
- **INTENTIONAL** `range_D2-26` (Ch 26 L8492): L8492 verified. 134 lines after the Ch25 killer reveal, inside the intentional reveal runway. Knowledge-consistent: Josh knew 'murdered' since Ch21 L6579. No forbidden T4 combo occurs in Ch26; real T4 news lands in Ch27 (name L9067, Thornew

## Appendix 2 — NOTE-level observations (36, no action taken)

Confirmed-but-minor author FYIs, not errors. A representative sample:
- `matter-6` (Ch PRINT_BACK_MATTER.txt L11): The print back-matter source file still contains unfilled template placeholders ('[ADD YOUR DETAILS HERE - hobby, location, etc.]' at L11 and '[Optional: Connect with Joshua at web
- `spec_prose-4` (Ch 1 L19): Ch 1 mixes curly and straight typography against a manuscript that is otherwise uniformly straight (majority style: straight apostrophes/quotes everywhere; only 11 curly apostrophe
- `matter-7` (Ch PRINT_FRONT_MATTER.txt L21): Unfilled '[Designer Name]' placeholder remains in the print front-matter source file. The shipped DOCX files omit the credit line entirely, so there is no current reader impact, bu
- `spec_prose_v1-7` (Ch 1 L53): L53 contains the manuscript's only en dash (–) in 'THORNEWOOD – 1897'; house style everywhere else is the em dash (1,166 uses). Possibly intentional as an inscription rendering, bu
- `range_A-20` (Ch 3 L724): Eleanor claims personal acquaintance with 'old owner' Hartwell ('kept the place up after he died', L730-731), but Josh's later research dates the previous owner's death to 2021 (L1
- `spec_canon-8` (Ch 5 L1608): STORY_BIBLE.md staleness (Apr 18 canon-deltas): (1) the bible timeline row 'Early Dec — First blackout' is stale — the first on-page memory gap is now Oct 28 (this Ch 5 scene, kept
- `spec_appearance-2` (Ch 7 L1950): Second instance of the same draft remnant: Josh (POV) calls his stay 'my position here' — employment language. He rented Thornewood via a booking application under the pseudonym Jo
- `range_A-13` (Ch 7 L2189): Requested check on the rewritten phone call: within the scene the grief count is 1 and the predator cover holds ('—he trusts me now' L2179, 'it ends here. One way or another' L2183
- `range_A-10` (Ch 8 L2262): This is the identical pattern the Apr 12 fix M5 deliberately removed from the previous Eleanor chapter (Ch 6 L1675 now reads only 'He talks about his childhood, the trauma that sha
- `spec_canon_v1-8` (Ch 9 L2495): The '.three narrowed from initial eight' funnel is never established anywhere else. Ch 7 (L1928-1940) already organizes Josh's research as six numbered victim files, and Ch 13 repe
- `range_B-13` (Ch 9 L2563): Recount of the 'Who is she?' dinner scene confirms three grief-coded Eleanor tells in one scene: 'her mask slipped entirely—shock, pain, raw fear' (L2565), the grief negation-tell 
- `range_B-15` (Ch 11 (vs Ch 9) L3061): Source mismatch for the same fact: Ch 9 L2405 attributes it to 'the property management company records (I'd called, pretending to be interested in hiring her),' while Ch 11 credit
- `spec_canon_v1-12` (Ch 11 L3147): STORY_BIBLE's Eleanor's Tenure rules assert 'Roy mentions seeing her "years back"' — no such line exists in the manuscript ('years back' = zero hits), and Roy says the opposite her
- `spec_setup-payoff-12` (Ch 11 (payoff gap in Ch 25-28) L3155): Roy's David Park account (blood on the sheets, the overnight 'family emergency' departure, caretaker Helen's cover story) is the book's most vivid mid-book mystery, and the reveal 
- `range_B-14` (Ch 12 L3896): Ch 12 technically exceeds the 1-physical-symptom cap for Eleanor chapters: pale/shadows-under-eyes (L3846), fingers-to-temples (L3896), and 'I blinked hard, forced focus' (L4022). 
- `range_C-19` (Ch 15 L5065): The sex footage dated 'two weeks ago' (also L5075) from the night of Dec 19-20 lands on ~Dec 5-6, inside the Nov 22-Dec 10 period Ch 12 frames as mutual distance ('he'd processed i
- `spec_timeline-22` (Ch 17 L5358): The stated time-of-death window excludes the canonical murder time. Ch 26's security footage timestamps run 8:43-8:48 PM ('8:48 PM. She stops moving.', L8370) and Ch 27's ME summar
- `range_C-23` (Ch 22 L6678): Verbal echo between two approved Apr 18 fixes: C1 here ('another wound I could press on. Another soft place to reach into') and H2 fix 2 at Ch 20 L6455 ('The soft place I could pre

## Appendix 3 — Reference-doc updates recommended

- STORY_BIBLE: pin Eleanor's birth month (she is 32 in Oct 2024 and "thirty-three" at death Apr 2025 — consistent only if her birthday falls Jan–early Apr; record it to close the question).
- TIMELINE_MAP: Oct 23 darkness time removed from the manuscript (now ridge-shadow phrasing, no clock); update if it recorded 4:30 PM.
- Chapter boundaries after fixes: Ch 25 = L7721, Ch 26 = L8098, Ch 27 = L8631; manuscript is 10,467 lines.
- The held chronology decisions (Part A of the proposal), once resolved, will require TIMELINE_MAP/CHAPTER_MAP date updates.
