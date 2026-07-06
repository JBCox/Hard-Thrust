# Hard Thrust — Audit Fix Proposal
**Date:** 2026-07-05  
**Companion:** `AUDIT_FINAL_REPORT_2026-07-05.md` (methodology, scores, per-dimension state)

This file has two parts: **(A)** confirmed issues that need *your* decision (not auto-applied), and **(B)** the 85 fixes already applied and committed.

**Git safety net.** Pre-audit baseline = commit `1253d17`, tag `pre-audit-2026-07-02`. Applied fixes = commit `260bfaf`. To revert the whole manuscript: `git checkout pre-audit-2026-07-02 -- FULL_MANUSCRIPT.txt`. To revert one applied fix, find it in Part B and undo that specific edit.

---

## Part A — Needs your decision (43 items)

> **STATUS: ALL RESOLVED (2026-07-05).** You instructed me to make the editorial calls, so every item below was resolved and committed (waves `e46bf48` and `5a1f03e`) rather than left for you. The recommended resolution shown for each is, in almost all cases, what was applied. See the "Resolution of the held items" section of `AUDIT_FINAL_REPORT_2026-07-05.md` for the per-cluster decisions. This section is retained as the record of what each problem was.

These were confirmed real by adversarial verification. Fixing each required choosing which version of the story to treat as canonical, or rewriting across chapters. The biggest ones are the chronology tangles introduced when scenes were edited without re-checking their partner scenes.

### CRITICAL severity

**`spec_timeline-1`** · timeline · Ch 7 · L2167–2167

- **Problem:** Ch 7 and Ch 8 give two mutually exclusive accounts of the night of Nov 8-9. Ch 7 (Josh, Nov 8): after the clearing fight, Josh eats 'a solitary dinner', watches the cottage light go out at 11:23 PM (L2165), keeps vigil until 2:38 AM, overhears Eleanor's 2:39-2:47 AM phone call from her cottage porch (L2169-2203), falls asleep after 3 AM and wakes 'the next morning...on the library sofa' (L2217). Ch 8 (Eleanor, header 'November 8, Evening'): she knocks on the mansion door at 7 PM with an overnight bag (L2242), Josh has cooked, they eat together, have sex in the master bedroom, she stays until 5 AM (L2346) and her journal is dated November 9 (L2360); Ch 9 confirms this version ('The morning after Eleanor left my bed', L2389; 'her hands. I'd noticed them last night', L2409). Eleanor cannot be both in her cottage (lights, pacing, phone call) and asleep in Josh's bed at 2:38 AM; Josh cannot both eat alone in a vigil and dine/sleep with her. Ch 8 also ignores that Eleanor told Josh 'Stay away from me, Josh...I mean it' that same afternoon (L2117-2127).
- **Recommended:** Author must de-conflict the Nov 8-9 night. RECOMMENDED: move Ch7's post-shower vigil + overheard phone call (L2155-2213) FORWARD one night — to Nov 9-10, AFTER Eleanor leaves his bed — with a clear time/date marker, so Ch8's 7 PM arrival + overnight + Nov 9 journal (which Ch9 L2389 confirms) stands as the Nov 8 evening. The phone call is load-bearing for Ch9 (echoed L2561), so KEEP its content verbatim and only re-anchor its date. Alternatively move Ch8's dinner to Nov 9 evening and re-date its header + journal, but that cascades into Ch9's 'morning after' dating — prefer re-anchoring Ch7's vigil. Content unchanged (Eleanor stays threat-coded; T2 intact); chronology only. Coordinate with range_A-2 and range_A-3 as one Ch6-9 pass.

**`spec_timeline-4`** · contradiction · Ch 9 · L2596–2598

- **Problem:** The notebook-confrontation -> tower room -> M+L 2020 carving discovery is narrated TWICE as a first-time event, in both POVs: Nov 14 (Ch 9 L2596-2610 'That's when I'd noticed the carving..."Who's M?" I'd asked'; Ch 10 L2970-2998 with journal 'He found my notes...The tower room', L3006-3008) and Dec 16-17 (Ch 15 L4717-4719 'I'd found her notebook in the library the day before...She took me to the tower room. Showed me the carving: M+L 2020'; Ch 16 L5160-5236 'You left this in the library...Then he saw the carving. "M+L 2020. Who's M? And who's L?"'). Eleanor even answers the identical question 'Who was the victim to you, Eleanor?' differently ('Someone who trusted the wrong person', L2984 vs 'Someone who threatened everything I built here', L5196). Worse, the Ch 9 version is impossible on its own day: on Nov 14 Eleanor was away from the estate 6:00 AM-6:15 PM (L2439, L2475), so no confrontation/tower visit could occur 'earlier that day.' Ch 15 also self-contradicts: 'She took me to the tower room. Showed me the carving' (L4719) vs 'I'd been back twice since finding it' (L4783).
- **Recommended:** Author must pick ONE canonical date and rewrite the other into a non-duplicative beat. RECOMMEND making Dec 16-17 (Ch15/16) canonical and rewriting the Ch9/10 Nov 14 material so NO notebook confrontation or tower visit happens then (Josh finds the disturbed earth/surveillance signs but not the notebook; delete Ch9 L2596-2610 and Ch10 L2970-2998 tower/carving content, keep the drugged-stew thread). This also fixes the Nov 14 impossibility (Eleanor absent all day). If the author instead wants deliberate repetition, Eleanor's Dec POV must register Josh repeating himself, framed as drug-attribution (NOT dissociation) to protect T1. Multi-paragraph two-POV rewrite; do not auto-apply; vet every replaced line against forbidden-terms.md.

**`spec_timeline-2`** · timeline · Ch 13 · L4487–4487

- **Problem:** Ch 13's internal chain double-books December 12 against Ch 14's canonical 7-hour blackout. Chain: dinner Dec 10 (L4215) -> 3:47 AM insomnia (L4241) -> 'The next afternoon...I woke around noon' (L4375-4377, Dec 11) -> soup refusal (Dec 11) -> 'That evening' (L4423) -> Eleanor's night intrusion (L4447-4483) -> falls asleep ~4:47 AM and wakes 2:47 PM after 'ten hours' to Roy Hendricks' truck = Dec 12, followed by a calm greenhouse visit with Eleanor and Roy (L4489-4521) and 'today feels different. Clearer. The rest helped' (L4531). But Ch 14 (header December 12) has Josh driving away at 6 AM, returning at 13:15 scratched and confused (L4552-4558), Eleanor joining him at ~13:35, then bedroom sex and him falling asleep in her arms — and Ch 15 (L4653-4655) confirms Ch 14's version as what Josh remembers. Josh cannot be asleep in a barricaded bedroom until 2:47 PM and also gone 6:00-13:15 then spending the afternoon in bed with Eleanor.
- **Recommended:** DECISION: which day owns the Roy/Scout wake-up, and how to free Dec 12 for Ch 14's blackout. RECOMMENDED: compress Ch 13's ending by one day — fold the intruder scene into the Dec 10-11 night, add an explicit 'December 11' marker before 'I wake to the sound of a truck engine' (L4487), drop/absorb the standalone 'That evening' day (L4423), and adjust 'slept ten hours' if the window changes. Keep the syringe ambiguity. Dec 12 then belongs solely to Ch 14. This also clears range_B-12's shading and sets the spec_timeline-12 date.

**`range_C-1`** · spoiler-T1 · Ch 22 · L6700–6726

- **Problem:** BLAST-RADIUS MAP (supplements the already-filed Ch 22 Feb 4 CRITICAL; not a new finding). Current scene DID-cluster count in Eleanor POV, 1,018 lines pre-reveal: (1) L6700 amnesia foreknowledge ('He doesn't remember any of it'); (2) L6702 'What he had done.' — attack attributed to Josh with zero drug frame; (3) L6704 mask/dual-self: 'All his careful performance—the steady voice, the considered silences—gone. Whatever lived underneath it came roaring out.'; (4) L6704-6706 trance entry ('something was wrong with him... his eyes were wrong'); (5) L6708 the switch-back ('Then something shifted. His grip loosened... walked out'); (6) L6722 'Whatever the dose did, it pulled something raw to the surface' — 'the dose' is now orphaned (its establishing clause was deleted). That is 6 same-category signals in one scene, double the cluster threshold. Additionally TWO throat references contradict the attack as described (L6706 = arm-grab + wall-slam only): L6712 'Checking that my throat wasn't bruised' and L6724 'Those hands around my throat.' L6712 is a line the prior filing did not list. Cross-chapter policy conflict the fix must also resolve: Ch 14 Eleanor POV still runs the old drug-attribution cheat (L4614 'Signs of what the drugs are doing to him', L4632 journal '*Whatever I gave him, it hit harder than I expected*') while Ch 22 now runs canon-honest — opposite POV policies in the two Eleanor chapters.
- **Recommended:** AUTHOR DECISION: confirm the canon drugging-policy applies (Eleanor never dosed him; keep drugging as Josh's inference, keep her threat-coded), then apply the coordinated reframe below. RECOMMENDED VERBATIM EDITS (all in L6700-6724):
1) L6700 replace 'He doesn't remember any of it. That's the only thing keeping this survivable for both of us.' WITH 'He doesn't remember any of it—came to me the next morning asking about the bruise like it happened to someone else. That's the only thing keeping this survivable for both of us.' (single-instance blackout = allowed; drops amnesia-pattern-as-fact; matches L8444 payoff).
2) L6702 replace 'trying to piece together what happened. What he had done.' WITH 'trying to piece together what happened. What he might have done to me.' (his uncertain reconstruction, not stated guilt).
3) L6704 replace 'All his careful performance—the steady voice, the considered silences—gone. Whatever lived underneath it came roaring out.' WITH 'Wound too tight, stripped down to raw nerve and panic. Nothing like the composed man who made me coffee in the mornings.' (removes the mask/dual-self switch imagery—the hardest T1 signal—reframes as situational stress breakdown).
4) L6706 replace 'Then he slammed me against the wall, pinning me there.' WITH 'Then he slammed me against the wall, pinning me there, one hand closing around my throat.' (adds throat contact required by L6712/L6724/L8444).
5) L6708 replace 'Then something shifted. His grip loosened.' WITH 'Then, just as suddenly, it drained out of him. His grip loosened.' (removes the 'something shifted' persona-switch; reframes as adrenaline/chemical recede).
6) L6722 replace 'Whatever the dose did, it pulled something raw to the surface.' WITH 'Whatever had come over him, it pulled something raw to the surface.' (removes orphaned 'the dose' + the Eleanor-drugged-him assertion; keeps her uncertainty).
Post-edit cluster check: the two hardest DID signals (mask 'performance gone' + 'something shifted') are gone; remaining beats (single blackout, drug/stress surge-and-collapse) read as the ALLOWED 'blackouts explained as stress/drugging' misdirection—no 3+ unattributed cluster. Eleanor stays predator-coded.

**`spec_timeline-3`** · contradiction · Ch 24 · L7578–7578

- **Problem:** Ch 24 flip-flops on whether police were really coming on Feb 28. At 8:47 AM the claim is a lie ('The police part was a stretch. Williams had checked in yesterday...I'd told him the roads were still too bad', L7428). But Eleanor's own private narration then treats the arrival as real: 'I thought about calling Williams. Asking him to come early' (L7516), 'Seven hours. Maybe less. Then Williams would arrive with backup and this would all be over. Josh would be arrested' (L7556), and the quoted L7578. Then at 5:47 PM she reverts: 'I lied about the police...Williams had only texted to check on us. I'd told him we were fine' (L7610). No police arrive on Feb 28 or during Ch 25-27; the arrest is Mar 15 (Ch 28). The countdown numbers also drift (noon speech 'seven hours' -> 7 PM at L7062; ~2:45 PM 'seven hours' -> ~9:45 PM at L7556; 3:47 PM 'around 8 PM'; 5:47 PM 'two hours' -> ~7:47 PM). A reader who believed L7556/L7578 will wonder why the 8 PM police never show up in Ch 25.
- **Recommended:** DECISION NEEDED: confirm every internal reference should read as Eleanor's fabricated deadline (canon: no police arrive Feb 28; arrest Mar 15). RECOMMENDED, three coordinated edits: (1) L7578 -> drop the Williams attribution, tie 8 PM to invented urgency: 'I checked the time. 3:47 PM. The deadline I'd given him—police by 8 PM—left a little over four hours.' (2) L7556 -> 'Seven hours. Maybe less, on the deadline I'd invented for him. Then it would all be over—one way or another.' (3) L7516 -> 'I thought about actually calling Williams. Asking him to come early.' L7428 and L7610 already frame the police as a lie and need no change. No spoiler risk (pre-T2, all keep her deceptive).

### HIGH severity

**`range_A-2`** · contradiction · Ch 7 · L1896–1896

- **Problem:** Ch 7's morning-after narration frames the Nov 7 night as kiss-only, contradicting Ch 6's explicit full sex scene (L1735-1765) and Ch 8's 'Different from the desperate urgency of our first night' (L2290) and 'Not after what we—' (L2270). Supporting seams: L1860 calls it 'the kiss that had stopped the world' and places it in 'The kitchen' though Ch 6 stages the kiss at the fireplace and the sex in the bedroom; L1876 reduces the night to 'the fact that I'd kissed the subject'; and L1856 'I woke to the smell of coffee' though nobody has brewed any (Josh starts his first pot at L1904). If left unmarked, comparing readers will conclude Josh has FORGOTTEN the sex — an unintended dissociation tell 5,800+ lines before the T1 reveal, since no wine/drug hedge is attached.
- **Recommended:** Author must decide the canonical intimacy chronology (same tangle as spec_timeline-1). RECOMMENDED: treat Ch6 (Nov 7) as the true first night and REWRITE Ch7's recap (L1856-1902) to acknowledge full sex — restore the bedroom (not 'the kitchen'), reference her leaving after, drop the 'just a kiss' framing (L1860/L1876/L1896). Ch8's 'our first night' (L2290) then re-casts as 'the first night she stayed,' and Ch8's header/journal re-date (see spec_timeline-1). If a genuine partial gap is intended, make it explicit wine-blur as Ch5 L1614 does — but an unhedged gap this early is a T1 risk, not recommended. Coordinate with spec_timeline-1 and range_A-3 as one Ch6-9 chronology pass.

**`spec_setup-payoff-3`** · setup-payoff · Ch 9 (payoff gap in Ch 25-28) · L2425–2425

- **Problem:** The torn guest-book pages (Feb 13-15, 2020) are one of the book's most-revisited physical mysteries — discovered L2421-2431 with the tear explicitly noted as RECENT (L2427 'the exposed paper fibers weren't yellowed'), re-examined with ghost indentations at L2716-2718, theorized about at L2737, L2783, L3081, L5636, and listed among Eleanor's suspected forgeries — yet the reveal never attributes them. Ch 27 pays off only a DIFFERENT page: Eleanor's carefully-removed Feb 8 Marcus Webb signature page (L8763-8771). Who ripped out Feb 13-15 (dates that precede Lily's Feb 18 murder), why those dates, and why recently, is never answered by Eleanor's otherwise-exhaustive confession or Josh's reconstruction.
- **Recommended:** Author must choose ONE: (a) give Eleanor a one-line ownership in Ch27 paralleling her grave admission — she tore the extra pages as bait ('You found it because I wanted you to wonder') — leaving L2425 as-is; OR (b) shift the torn dates here from 'February 13th, 14th, 15th' to the murder-to-departure window (e.g., Feb 18-21) and have Eleanor produce them beside the preserved Feb 8 page in Ch27. RECOMMEND (a): one-line Ch27 add, keeps all six existing references intact (no ripple to Josh's 'held my name' theory), matches Eleanor's 'I wanted you to wonder' voice. Do NOT change L2425 unless the author picks (b).

**`spec_plot-logic-2`** · contradiction · Ch 12 · L3686–3686

- **Problem:** The winter-entrapment premise is repeatedly contradicted by on-page travel. Ch 12 (Dec 10) declares roads 'impassable since November' (also L3994 'cut off for weeks'), yet: Ch 13 the same day has Josh moving his truck so he won't 'be snowed in completely by morning' (L4159, i.e., not yet snowed in); Ch 14 (Dec 12) Josh drives away for seven hours and claims 'Town. I went to town for supplies.' (L4574) with Josh himself intending town (L4653); Ch 17 has Eleanor planning 'an early morning errand into town before the Christmas Eve storm' (L5253) and returning with purchased decorations; Ch 25 has Eleanor mailing an evidence package to Rachel three days before Feb 28 (L7759) while telling Williams roads are 'still too bad' (L7428); and Ch 30 retroactively establishes routine passability all winter — 'I scheduled treatments on Josh's supply-run days, drove to Medford and back while he was in town buying groceries' (L9736) — plus Ch 28's 'the roads are finally passable. For the first time in months' (L9210). The entrapment claim and the trip record cannot both be true.
- **Recommended:** Decision required: which winter-access rule is canonical — total lockout 'since November', or intermittent multi-day storm closures with plowed windows between (what Ch5's forecast, the supply runs, and Eleanor's treatment drives all imply)? RECOMMENDED: adopt intermittent closures. Then soften Ch12's two absolutes — L3686 'the roads impassable since November' → 'the roads closed more often than open since November' and L3994 'cut off for weeks' → matching language — and align Ch28 L9210 'for the first time in months' → 'for the first time in weeks.' Preserves the claustrophobia while making every winter trip feasible. Spoiler-safe: none of these lines carry twist language.

**`range_B-2`** · timeline · Ch 12 · L3818–3972

- **Problem:** The same overheard mom-call is given two incompatible times of day. Eleanor's framing brackets it at 3:17–4:38 AM (L3818 'Three-seventeen AM. Josh would be asleep in the mansion. I'd seen his bedroom light go dark hours ago'; L4026 'I checked the time: 4:38 AM'), yet Josh's interleaved section overhears the identical call (four verbatim lines) while 'walking to the cottage to see if Eleanor wanted dinner' in the 'still December evening,' then texts 'Not hungry tonight... See you tomorrow?' and gets 'Okay. Sleep well.' Also 'Mom calling again. Third time today' (L3862) is odd at 3 AM.
- **Recommended:** Decision required: is the mom-call an EVENING event (Josh's version) or a 3–4:30 AM event (Eleanor's loft version)? RECOMMENDED: keep it EVENING — smaller rewrite, and Josh's dinner-walk + text exchange are load-bearing. Re-anchor Eleanor's loft scene: 'Three-seventeen AM. Josh would be asleep in the mansion. I'd seen his bedroom light go dark hours ago' (L3818) → a late-evening beat, and 'I checked the time: 4:38 AM. Josh would sleep another two hours.' (L4026) → a late-evening time, dropping the 'asleep two more hours' assumption. Must be resolved jointly with spec_timeline-5, since moving the call moves the whole loft/journal scene relative to Ch13's insomnia night.

**`spec_timeline-5`** · timeline · Ch 12 · L4026–4026

- **Problem:** Ch 12 and Ch 13 (the same-day POV pair, both headed December 10) cannot be aligned around the night of Dec 10-11. Ch 12's morning-after: Eleanor at 4:38 AM believes 'Josh would sleep another two hours,' sees movement in his window at 7:32 AM (L4054), and shares a pancake morning where Josh answers 'Sleep well?' with 'Actually, yeah' (L4076-4078). Ch 13's night: Josh gives up on sleep at 3:47 AM (L4243), Eleanor herself walks into the library minutes later in sweatpants to comfort him and walks back 'on snow' (L4299, L4363), and Josh then sleeps until noon, with Eleanor texting 'Let you sleep. Working on the south fence' (L4375-4379) — no pancakes. If the pancake morning is Dec 10, then Ch 12's intimacy evening is Dec 9 and its header/'snow started falling at sunset' (L3686) conflicts with Ch 13's Dec 10 daytime 'snow was coming down heavily now' (L4159); if it is Dec 11, it collides with Ch 13's insomnia night and noon wake. Either way one chapter's account of Eleanor's 4-5 AM whereabouts and Josh's sleep is false.
- **Recommended:** Decision required: are Ch12's intimacy-evening/loft/pancake-morning and Ch13's insomnia-night the SAME night or ADJACENT nights? RECOMMENDED: make them adjacent and date-stamp — Ch12 intimacy evening = Dec 9, loft/journal = night of Dec 9→10, pancake morning = Dec 10; Ch13 insomnia night = Dec 10→11 with Eleanor's library visit intact, Josh waking near noon Dec 11. Removes the overlap without contradicting Ch13's 'snow coming down heavily' daytime. If they must be the same night, cut Eleanor's 'Josh would sleep another two hours' (L4026) and the pancake morning, since Ch13 puts her in the library with him at ~3:50 AM. Resolve jointly with range_B-2 (both hinge on Eleanor's 3–5 AM whereabouts).

**`range_C-2`** · contradiction · Ch 16 · L5220–5220

- **Problem:** The entire Dec 17 confrontation sequence in Ch 15/16 duplicates the Nov 14 sequence in Ch 9/10 nearly beat-for-beat, with VERBATIM dialogue repeats and contradictory answers. Nov 14 (Ch 9 L2596-2610, Ch 10 L2970-2998): Josh confronts Eleanor about her notes in the library; she answers 'Because I'm scared... After what happened here in 2020, I needed to know who was on the property. If they were... safe.' (L2974); he asks 'Did you know them? The victim?' (L2976) — 'I knew of them. It was a tragedy.' — and 'Who was the victim to you, Eleanor?' (L2982) — 'Someone who trusted the wrong person.'; she takes him to the tower room; he finds the M+L 2020 carving and asks 'Who's M? And who's L?' (L2604/L2992). Dec 17 (Ch 15 L4717-4723, Ch 16 L5186-5222) restages all of it: 'Because I'm scared... I wanted to know who was on the property. If they were... safe.' (L5186, near-verbatim), 'Did you know them? The victim?' (L5188) — now answered 'No' (contradicting 'I knew of them'), 'Who was the victim to you, Eleanor?' (L5194, verbatim) — now 'Someone who threatened everything I built here', tower room, same carving question (L5220). Josh shows no memory of the November exchange (Ch 15 L4719 'Showed me the carving... I didn't recognize it'; L4783 'since finding it'), and Eleanor never reacts to his repeated question or her own changed answers. Only L5222 ('He had no memory of the carving. Didn't remember the tower.') gestures at a deliberate amnesia beat; nothing else supports it. Also staging wobble: Josh at the cottage doorway at 3 PM (L5160) yet 'waiting in the great room' (L5172) — a mansion room per L3205/L5372.
- **Recommended:** Author decision: resolve the duplicated Nov 14 / Dec 17 confrontation. Also a staging wobble: Josh at the cottage doorway 3PM (L5160) but 'waiting in the great room' (L5172, a mansion room). RECOMMENDED (option A, lowest spoiler risk): make Dec 17 an explicit SECOND conversation — Josh references the carving as already known ('the carving she'd shown me in November'), delete the repeated verbatim questions, and make Eleanor consistent OR have Josh challenge the change ('That's not what you said before'). Also drop Ch 15 L4719 'I didn't recognize it' / L4783 'since finding it' first-time framing. Option B (commit to amnesia — Josh truly forgot Nov): higher T1 risk, Eleanor-side subtext ONLY, she must never name the repetition pre-Ch 25, and L4783 'been back twice since finding it' needs reconciling. Fix staging: move confrontation to the mansion or change 'great room' to a cottage room. Recommend A + mansion staging.

**`spec_setup-payoff-2`** · setup-payoff · Ch 17 (payoff gap in Ch 29-33/Ep) · L5640–5640

- **Problem:** Josh's dead-man's-switch email to his editor Derek Hayes (TrueCrimeWeekly.com) is actually SENT ('I hit send,' L5648) on Dec 25 — coordinates attached, Eleanor accused by name, police instructions included — and Derek never appears again after L5628. The parallel device, Eleanor's evidence package to Rachel, IS resolved on-page (L10187: Rachel calls the DA in late March), which makes Derek's orphaned email conspicuous. Post-arrest, a true-crime editor holding a written accusation against the woman publicly credited with catching the killer is a live loose end the aftermath chapters (Ch 29-33, hearings, sentencing) never touch.
- **Recommended:** Author decision: whether to close the orphaned Derek-email thread in the aftermath chapters, and with how much weight. Complication: minor (Derek is a bit player) and post-confession the email CORROBORATES rather than contradicts Josh's guilt, so it's a soft loose end, not a plot hole. RECOMMENDED: one mirror line in Ch 29-33 paralleling the Rachel resolution — e.g., Brennan notes Derek turned the December email over to detectives after the arrest, and Josh registers the shame of having publicly accused the woman dying to catch him. Alternatively SKIP as acceptable FYI.

**`spec_timeline-7`** · contradiction · Ch 19 · L6364–6364

- **Problem:** Ch 19 contradicts itself within a single night. Its opening (Dec 26): 'Eleanor had gone to town—I'd watched her car disappear down the driveway three hours ago. She'd be gone for at least another two hours, maybe more if the roads were still bad from yesterday's storm' (L6082) — so the road was drivable that afternoon. Its close (Dec 27, ~4:47 AM): the roads 'had been [snowed in] for three days' with 'no way down the mountain.' Both cannot be true; Eleanor drove down that mountain hours earlier. Ch 18 (same day) adds a third state: Josh says 'First thing tomorrow when the roads clear, I'm gone' (L6001) while Eleanor privately notes 'The storm had cleared two days ago' (L6037).
- **Recommended:** Multi-scene storm/road chronology tangle across Dec 24-27 with four mutually-exclusive states a single line edit cannot reconcile: (1) Ch 18 L6001 — Josh: 'when the roads clear, I'm gone' (roads NOT clear Dec 26); (2) Ch 18 L6037 — Eleanor: 'The storm had cleared two days ago. Signal was fine' (fine Dec 26, storm ended ~Dec 24); (3) Ch 19 L6082 — Josh: Eleanor drives to town and back that Dec 26 afternoon, 'if the roads were still bad from yesterday's storm' (storm ~Dec 25, road marginally drivable); (4) Ch 19 L6364 — Josh Dec 27 4:47 AM: roads 'snowed in... Had been for three days. No way down the mountain.' Eleanor demonstrably drove down and back hours earlier, so 'three days / no way down' is impossible, and the storm-date anchors conflict. AUTHOR DECISION NEEDED: fix the canonical Dec 24-27 weather/road timeline, then align all four passages. RECOMMENDED: 'plowed-but-marginal window that re-closed overnight' — storm clears ~Dec 24 (keep L6037); road passable-with-care Dec 25-26 (supports Eleanor's Dec 26 run; soften L6082 'yesterday's storm' to 'the last storm'); fresh heavy snow overnight Dec 26->27 closes the road by dawn. Then change L6364 to e.g. 'But snow had come down hard again overnight, and the road had closed back up. No way down the mountain until the plows came through.' and adjust L6001 so Josh awaits the fresh overnight closure. Not drafted as an applied edit because L6364 alone can't be made consistent without also settling L6001/L6037/L6082.

**`range_C-5`** · plot-logic · Ch 21 · L6565–6571

- **Problem:** Josh's December crisis resets to domestic intimacy with no bridge. Ch 17 ends with him emailing Derek his coordinates in case Eleanor kills him (L5640-5642); Ch 19 ends Dec 27, 4:47 AM with a plan to 'get to the police when the roads cleared' and 'If I survived that long' (L6370-6372). Twelve days later (Jan 8) he is sharing his most precious keepsake with her by the fire, and by Feb 3 they have wine dinners (L6593). Eleanor's side of the aborted Dec 27 climax got an explicit patch (Ch 22 L6664 'The confrontation on December 27th never happened...'), but Josh's side has none: no explanation of why he never went to the police once roads cleared (they did — Eleanor shops in town; Deputy Williams 'checked in' per L7428), why he stayed, or how the trust rebuilt. Readers will feel the whiplash and the dropped police plan.
- **Recommended:** AUTHOR DECISION: add a Josh-side bridge at the top of Ch21 mirroring Eleanor's Dec-27 patch, and confirm framing. RECOMMENDED: insert a dated beat right after the Ch21 heading, before current L6565 '**January 8**': "**December 28.** The plows finally came through. I got as far as the county road and sat there with the engine running, rehearsing what I'd tell them. A podcaster's word against a groundskeeper with a clean record and no evidence but the drive to prove I wasn't losing my mind. I turned around. Told myself I'd stay to catch her at it—to get something they couldn't wave away. That's the lie I lived on through January." This closes the dropped police plan, explains why he stays, keeps drug-attribution/'catch her at it' framing (reinforces the Eleanor-as-predator misdirection), and adds no forbidden terms or DID cluster. Author must bless the invented content and the exact thaw date (Dec 28 assumes roads cleared the day after Ch19's Dec-27 4:47 AM; adjust if the intended thaw is later; Deputy Williams 'checked in' per L7428 confirms roads did open).

**`spec_setup-payoff-4`** · setup-payoff · Ch 23 (payoff gap in Ch 25-28) · L6852–6852

- **Problem:** Of Josh's five-item planted-evidence inventory, the muddy boots and the nondescript jacket are orphaned red herrings. The boots are planted hard (Ch 13 L4231 discovery, Ch 17 L5636 'Muddy boots in my closet I never bought', Ch 23 IMPOSSIBILITY #1 L6776-6784) and the dark canvas jacket is planted from Eleanor's own POV (Ch 12 L3832 'The jacket in his closet that appeared one day'), but neither is ever mentioned again after Ch 23 — no post-reveal text explains whether they were fugue-Josh's own gear or exonerates Eleanor of planting them, even though she explicitly clears herself of every comparable accusation (grave, trunk, forgery, restoration supplies). Guest book, witnesses, and timeline all get full payoffs; boots and jacket get none.
- **Recommended:** DECISION NEEDED: add a one-beat closure for boots/jacket, or leave as inferable fugue gear? RECOMMENDED: near the grave/trunk accounting (~L8855, after 'A contingency.'), have Josh say 'The boots in my closet. The jacket I never bought.' and Eleanor answer 'I never touched your closet, Josh.' — converts both from 'Eleanor planted' to 'fugue-Josh acquired,' matching how she clears everything else. Keep her denial flat so it doesn't reopen the drugging-canon issue. If the author prefers minimal footprint, SKIP is acceptable — nothing harms the book as written.

**`spec_prose_v1-1`** · contradiction · Ch 23/24 · L6980–7010

- **Problem:** Ch 23 contains TWO near-identical Eleanor door-speech visits: an ~11:07 AM visit (L6980-7010) and the noon visit (L7032-7062). Three sentences repeat nearly verbatim ~55 lines apart with no acknowledgment: 'I can't explain it through a locked door' (L6996 = L7054), 'There's evidence in my cottage... In the locked room. Truth. Everything you need to understand what's really happening' (L7000 = L7058), and the countdown plea (L7006 'eight hours' = L7062 'seven hours'). The 11:07 visit has NO counterpart in Eleanor's Ch 24 retelling — her account (L7462-7470) has her at the cottage from 10:47 until 'At noon, I tried again' (L7470), directly contradicting Josh's account of her at the door at ~11:07. Additionally, 'I'll wait as long as it takes' closes the 11:07 visit in Josh's POV (L7010) but closes the NOON visit in Eleanor's (L7504). Present in the Mar 20 backup, so long-standing — but it reads as two draft variants of the same visit both retained. A reader will notice the same three-sentence speech delivered twice in one chapter.
- **Recommended:** DECISION NEEDED: one late-morning visit or two? RECOMMENDED Option A (cleanest): cut Josh's 11:07 visit (L6980 'Twenty minutes later, she emerged again' through L7010 'I'll wait as long as it takes.') so Ch 23's noon visit becomes Eleanor's second approach, matching Ch 24; lightly adjust the L7016 reflection if it now over-counts attempts. This single cut also resolves range_D1-4 and lets spec_prose_v1-2 be aligned in the same edit. Option B (keep both) needs a matching 11:07 beat added to Ch 24 plus Josh clocking the repetition at noon — more risk. Recommend Option A.

**`spec_retro-6`** · contradiction · Ch 26 (vs Ch 22 as now written) · L8444–8444

- **Problem:** Ch 26's evidentiary linchpin recap of the Feb 4 attack no longer matches the scene as rewritten in Ch 22 L6706-6708: there the attack is an arm-grab and wall-slam only ("He grabbed my arm first... slammed me against the wall, pinning me there... Then something shifted. His grip loosened. He stumbled back, muttering something I couldn't catch, and walked out") — no hands on throat, no blink, and he stumbles out muttering rather than walking out "like nothing had happened." Throat contact survives in Ch 22 only as unanchored residue (L6712 "Checking that my throat wasn't bruised," L6724 "Those hands around my throat"), which the diff triage already flagged as an internal wrinkle of the unaudited Ch 22 rewrite. Whatever re-fix is designed for Ch 22's CRITICAL must also be harmonized with this Ch 26 recap (and with the arm-bruise thread at L6613, which currently does match).
- **Recommended:** AUTHOR DECISION: reconcile the Feb 4 attack between Ch 22 (arm-grab/wall-slam, stumble out muttering) and the Ch 26 recap (hands on throat, blink, calm walk-out). (A) Restore an explicit throat beat to the Ch 22 action so both agree — fits the Ch 22 throat-residue (L6712 'Checking that my throat wasn't bruised', L6724 'Those hands around my throat') and the arm-bruise thread consistent across Ch 21/22/26. (B) Revise Ch 26 L8444 to match Ch 22's action, e.g. 'You grabbed me, slammed me against the wall — your hand starting toward my throat before something in you pulled back. You stumbled out muttering, like you were waking from a dream. You left a bruise on my arm that took two weeks to fade...' RECOMMENDED: (A) — hands-on-throat is the payload of Eleanor's 'From your hands on my neck in the dark' line and shouldn't be softened out; adjust the Ch 22 action beat (as part of its pending re-fix) so both carry throat contact. Keep 'bruise on my arm' unchanged. MUST be executed together with the Ch 22 CRITICAL re-fix so the two don't re-desync.

**`spec_canon_v1-5`** · contradiction · Ch 26 · L8448–8448

- **Problem:** The Ch 26 and Ch 27 explanations of why police never identified Josh contradict each other on the beard direction and the facial-recognition outcome. Ch 26 L8448 has Eleanor say Josh 'grew a beard' as a reason he no longer matches the 2020 tape — implying the footage man was not bearded. Ch 27 L8963 states the opposite: 'The footage showed a man with a beard, longer hair, twenty pounds heavier. My podcast headshots were clean-shaven' — if the tape man was bearded and current Josh wears a trimmed beard (canon), growing a beard makes him MORE like the tape, not less. Additionally Ch 26 L8446 says 'Facial recognition came back empty' and the file was 'too degraded for reliable enhancement,' while Ch 27 L8959 says they 'run it through facial recognition and gotten hundreds of partial matches, none conclusive.' These are the two most-scrutinized explanatory passages in the book, 500 lines apart.
- **Recommended:** Ch 26/27 give opposite reasons police never ID'd Josh. L8448 'You grew a beard' implies a clean-shaven tape man, but Ch 27 L8963 has the tape show a bearded man vs clean-shaven headshots. Canon Josh already has a trimmed beard, so growing one moves him toward the tape man — inverted. Also L8446 'came back empty' vs L8959 'partial matches, none conclusive'. Harmonizing to Ch 27; lines contiguous.

**`spec_appearance-3`** · appearance · Ch 27 · L8963–8963

- **Problem:** Ch 27 says the Feb 2020 security-tape figure was BEARDED, longer-haired, and twenty pounds HEAVIER than present-day Josh (also L8959: 'It captured a bearded man arriving and leaving'). But one chapter earlier Eleanor gives the opposite account — Ch 26 L8448: 'You grew a beard. Cut your hair differently. Put on muscle.' — i.e., the tape figure was beardless and slighter, and Josh gained mass since. And in the Ch 26 murder-footage scene (L8354) Josh sees 'Same build. Same height. Same way of holding his shoulders,' contradicting both changed-build accounts. Three irreconcilable descriptions of the same figure within ~600 lines, both post-reveal chapters that readers scrutinize hardest.
- **Recommended:** Canon L216 (Josh NOW: 'trimmed beard... muscular') and Ch26 L8448 ('You grew a beard... Put on muscle') fix 2020=beardless/leaner, now=bearded/heavier. Ch27 asserted the reverse (2020 bearded/+20lb, now clean-shaven). Fix inverts Ch27 to match canon — NOT the finding's direction, which would clash with Josh's current look. L8354 untouched (hair ambiguous there; posture-only).

### MEDIUM severity

**`spec_setup-payoff-8`** · setup-payoff · Ch 5 (payoff gap in Ch 25-28) · L1210–1210

- **Problem:** The founding premise of Josh's investigation — three Thornewood register-signers who vanished — is planted twice (L1210, L1346) and never reconciled with the final canon. The reveal's victim board (L7795-7799) places Martinez and Wallace in Portland, Fischer on a trail, and Lily was live-in staff whose body WAS found; only David Park fits 'signed the register, then vanished.' The other two matching names are never identified, never mapped to victims, and never dismissed as coincidence, leaving the reader unable to square Josh's early research with the six-victim roster.
- **Recommended:** Author must decide how Josh's 'three vanished register-signers' claim squares with the six-victim roster. RECOMMENDED: soften L1210 and L1346 from 'three names that matched / three people who vanished' to one confirmed match (David Park, who genuinely signed and vanished) plus 'a couple of other leads that never resolved' — keeps the investigative hook without promising three clean register-to-victim matches the reveal never delivers. Alternative (heavier): add a line to Eleanor's Ch26 board naming which register names Josh flagged. Prefer the L1210/L1346 softening; contained to the pre-reveal zone, no reveal-chapter change.

**`range_A-9`** · pov · Ch 6 · L1821–1821

- **Problem:** Dual-POV mismatch on the same 2-3 AM walk: Eleanor's own first-person account (L1775) is an empty-handed cathartic walk ('I pull on my boots and go back outside—into the woods, along the trail I know by heart now, letting the cold air scour the warmth of him off my skin'), no box, no shovel, no digging, back at 3:15. Josh sees her carry something in and return 'no longer carrying anything' (L1829), and the next day the clearing shows fresh disturbance 'Like someone had been digging. Or checking something buried' (L2019), which corroborates his version. Either Josh misperceived (then the fresh digging needs another source) or Eleanor's POV conceals an on-page action — the same Eleanor-POV-honesty breach class the Apr 18 audit is policing in Ch 22, and there is no post-reveal explanation for her burying anything that night.
- **Recommended:** Author must set the canonical Nov 7-8 night event. RECOMMENDED: canon = Eleanor cached NOTHING that night (her walk is as her POV states); Josh misperceived a distant figure (his 'can't tell' already covers this), and the next-day disturbance is the PRE-EXISTING maintained cairn she tends, not fresh digging. To remove the 'fresh digging that night' implication, optionally soften Ch7 L2019 'Like someone had been digging. Or checking something buried.' to 'Like the ground had been worked over at some point, then left to settle.' Do NOT add a burial clause to Eleanor's Ch6 POV — that would invent a non-canon action. No applied edit pending the author confirming she cached nothing.

**`range_A-6`** · contradiction · Ch 5/7 · L1974–1974

- **Problem:** Derek's Nov 8 email (Subject: 'Re: Thornewood Chapter Draft'; 'Read your latest pages... they're excited about the Thornewood angle') contradicts Ch 5, eleven days earlier: 'Derek kept emailing about a book manuscript, but I wasn't ready to pitch the Thornewood story yet. Not until I had proof' (L1202). No on-page pitch or pages-sent event intervenes, yet by Nov 8 Derek has read Thornewood chapters and a publisher has a delivery schedule. It also muddies the publishing architecture: Rachel is the agent handling the contracted cold-case book (50K words, pages by end of month, L105/L523), while Derek is a webzine editor for freelance articles — the email gives Derek a second, unexplained book deal.
- **Recommended:** Author must reconcile Derek's email with the Rachel(book)/Derek(articles) split and with L1202 ('not ready to pitch yet'). RECOMMENDED: recast Derek's email as a webzine matter + FUTURE-pitch nudge, e.g. Subject 'Re: your Thornewood pitch'; body along the lines of 'Still holding space for the Thornewood piece whenever you're ready to show me pages. I know you've only been doing this four years, but your output's solid and there's an appetite for it. Send when you've got something.' — keeps the 'four years' detail, removes the phantom book/April-delivery, stays consistent with 'not ready to pitch yet.' Then change L1979 'noted the deadline change' to 'noted the nudge.' If a real April-vs-June deadline is wanted, place it in a Rachel communication, not Derek's. No applied edit because the reassignment spans multiple lines and needs an authorial decision on the deadline's home.

**`spec_setup-payoff-6`** · setup-payoff · Ch 7 (payoff gap in Ch 25-28) · L2045–2045

- **Problem:** The work glove at Lily's cairn is planted with an explicit Chekhov promise ('Evidence had a way of mattering later'), photographed and GPS-logged (L2043), carried through Ch 7 (L2129), theorized as planted (L2783), paired with a second glove in the basement workshop into a 'matched pair' mystery (L2803), shown to Eleanor (L2871), and physically handled through a sleepless night (L2933) — then never mentioned again after L2803's thread; no post-reveal line identifies whose glove it was (Eleanor's while tending the memorial? fugue-Josh's? Roy's?). The promise 'mattering later' is never honored.
- **Recommended:** Author must (a) decide whose glove it is and (b) add one closing line in Ch26-27. RECOMMENDED: the glove is Eleanor's, from tending Lily's memorial — add a clause to her Ch26 disclosure, e.g. 'The glove by the cairn was mine. I've kept those stones for four years.' This pays off the promise AND retroactively explains the maintained cairn (L2025) she tends (consistent with her being Lily's sister). Do not attribute it to fugue-Josh (over-clues) or leave it unresolved. Edit lives in Ch26-27 (outside Ch1-7), flagged for the reveal-chapter pass, not applied here.

**`spec_timeline-21`** · contradiction · Ch 12 · L4032–4032

- **Problem:** Cottage visit-count continuity is broken across four chapters. Eleanor (Dec 10) says Josh has been in the cottage 'once, early November.' But Josh had dinner inside the cottage on Oct 28 (Ch 5: she opens the door, they eat by her fire, he asks about the loft ladder, L1466-1532), had 'been there for coffee last week' per Ch 9 (L2411, ~early Nov), and Ch 11 calls his snooping visit 'my second visit to the cottage' (L3069) — which itself ignores the Oct 28 dinner. The counts (Eleanor: one; Josh: two; on-page: at least three) cannot all be right.
- **Recommended:** Decision required: does Oct 28's dinner happen INSIDE the cottage (as Ch5 stages it) or should it move to the mansion? RECOMMENDED: keep the dinner inside and reconcile counts — Ch12 L4032 'Josh had been here once, early November, a casual visit' → 'Josh had been inside a handful of times—dinner in October, coffee in November'; Ch11 L3069 'During my second visit to the cottage' → 'During my third visit to the cottage'. Those two edits (one in this region, one just above it) make Eleanor's count, Josh's count, and the on-page occasions (Oct 28 dinner, early-Nov coffee per Ch9 L2411, mid-Nov snoop) agree — cheapest path, no scene rewrite. Held because it settles canon and touches L3069/L4032/Ch5 together, not a lone edit.

**`spec_timeline-12`** · timeline · Ch 13 · L4433–4433

- **Problem:** Journal entry is misdated by the chapter's own chain. The lunch refusal happens 'The next afternoon' (L4375) after the Dec 10 dinner (L4215) and the 3:47 AM scene (L4241), i.e., Dec 11 — and Eleanor's soup line 'You didn't eat much yesterday' (L4387) points back to the Dec 10 dinner. Josh's dated journal entries are used as timeline anchors elsewhere (Ch 9 L2648, Ch 23 L6790), so a wrong date reads as an error rather than character fallibility.
- **Recommended:** DECISION: settle the Dec 9-12 grid via spec_timeline-2, then set this journal date to the refusal day. RECOMMENDED: if current structure is kept, change '*Dec 10 - Refused Eleanor's lunch...' to '*Dec 11 - ...'. Re-number differently only if the author collapses the refusal day itself during compression.

**`range_C-16`** · setup-payoff · Ch 15 · L4987–4987

- **Problem:** Orphaned Chekhov's gun: the Dec 19 box-burial scene is heavily dramatized — Eleanor buries something in the eastern woods, then breaks down in 'raw, ugly anguish' (L4995-4999), and Josh spins sinister theories ('Trophies from previous victims', L5007-5013) that crystallize his certainty ('she's burying things in the woods', L5021). Grep confirms the box is never referenced or explained again anywhere in the manuscript, including the reveal chapters and the epilogue (Lily's grave scene). Post-reveal readers re-examining Eleanor's behavior will ask what she buried and get nothing.
- **Recommended:** Author decision: pay off the buried box or de-emphasize it. RECOMMENDED (option 1, keeps the vivid Ch 15 beat): add one line in Ch 26/28 where Eleanor accounts for it, e.g. in the confession: 'I buried what was left of Lily on the grounds the week I nearly gave up — her letters, the last of her things, where he'd never think to look.' Converts Josh's 'trophies' misread into grief and rewards the re-read. Option 2 (no new canon): trim L4987/L5001/L5021 so the burial is one ambiguous observation, not a loaded setup. Keep it sinister to Josh pre-Ch 26 either way.

**`range_D1-6`** · plot-logic · Ch 23 · L6819–6821

- **Problem:** Josh describes visual qualities of a signature he has never seen. The Feb 2020 guest book pages were torn out before he could inspect them (L2716: 'The same torn pages I'd found before. February 13th through 15th, 2020. Ripped out clean.'; Ch 17 L5636: 'pages conveniently destroyed before I could verify anything'), and L6819 asserts present-tense that 'The guest book contains my handwriting under a fake name, dated February 2020.' Worse, the signature is dated February 8 (L7813 'Marcus Webb, February 8, 2020'; confirmed L8887) — OUTSIDE the torn Feb 13-15 range — so either the signature page was still in the book (in which case Josh's repeated February examinations in Ch 9 would have surfaced 'Marcus Webb' months earlier), or the torn-page dates are wrong. Related anachronism: Ch 15 L4729 already references 'the forged signature' before Josh reads Eleanor's guest-book note in Ch 19 (L6188).
- **Recommended:** DECISION NEEDED: does the fake-signature page get torn out too, or does Josh only learn of it secondhand (photocopy L7813)? RECOMMENDED (three coordinated edits): (1) L2716 change torn range to 'February 7th through 9th, 2020. Ripped out clean.' so the Feb 8 page is among removed pages; (2) L6819-6821 hedge Josh's Ch 23 description to secondhand — 'A signature I've never been allowed to see—Eleanor's own timeline says the handwriting matches mine, dated to a period where she wants me to believe I was here'; (3) L4729 swap 'the forged signature' for 'the planted evidence'. Apply all three together or the gap just shifts.

**`range_D1-4`** · timeline · Ch 23/24 · L7502–7504

- **Problem:** The tightly mirrored hour-by-hour dual-POV structure (8:47/9:30/10:15/10:47/2:18/3:47/5:03/5:47/6:34 all sync) breaks in the 11:00-12:34 window. Josh's POV has TWO late-morning visits: one ~11:07 ('Twenty minutes later' after 10:47, L6980) containing the 'eight hours' speech and ending with Eleanor sitting down saying 'I'll wait as long as it takes' (L7008-7010), then a separate noon visit ending with her walking straight back to the cottage 'Shoulders slumped. Defeated.' (L7074) and not returning by 1:34 (L7084). Eleanor's POV has NO ~11:07 visit ('Standoff.' L7466 covers 10:47-noon) and attaches the sit-down-and-wait ending to the noon visit (L7502-7504), staying at the door until ~12:34 (L7510 'I'd gone back to the cottage an hour ago'). Josh, glued to his cameras all day, cannot both watch her walk away at noon and miss her sitting at his door for 30 minutes.
- **Recommended:** DECISION NEEDED: same root as spec_prose_v1-1 (one late-morning visit or two). RECOMMENDED: adopt Option A (cut Josh's 11:07 visit L6980-7010) — collapses Josh to a single noon approach matching Eleanor's, and 'I'll wait as long as it takes' then lands at the same noon beat in both POVs. If instead keeping two visits (Option B): in Ch 24 replace 'Standoff.' (L7466) with a two-line ~11:07 account (second knock + eight-hours pressure, ending her sitting 'I'll wait'), and end the noon visit with her walking away ('I made myself walk back to the cottage. Let him see defeat.'). Resolve jointly with spec_prose_v1-1 and spec_prose_v1-2.

**`spec_retro-11`** · setup-payoff · Ch 26 (unresolved through Epilogue) · L8170–8170

- **Problem:** Eleanor's contingency letter to Josh (L8136-8168) — containing her explicit love confession, the .38 revolver in her locked desk drawer, and "The one in my car was for you. The one in my desk was for me" — is never mentioned again. The confrontation succeeds, but the letter and revolver simply vanish from the narrative, even though (a) the cottage evidence room is processed for the case, (b) Josh spends Ch 31-Epilogue agonizing over exactly the question the letter answers ("Was it all an act?... I'll never know," L9849), writing unsendable letters to her. A loaded Chekhov's gun (literally) with no payoff.
- **Recommended:** AUTHOR DECISION: does Josh ever learn what the letter says? Two mutually-exclusive resolutions, each needing new prose outside this region. (A) Eleanor destroys the letter on-page in Ch28 or Ch30 (e.g. 'I burned the letter I wrote him. Some answers should die with me.'), keeping Josh's 'I'll never know' ache intact; the desk .38 is recovered by police off-page. (B) Pay it off in the Epilogue: an investigator (Brennan) mentions the sealed envelope and the second revolver found in the cottage evidence room, and Josh finally reads her confession — which directly answers L9849 and sharpens the epilogue's unsendable-letter ritual. RECOMMENDED: (B) — the whole epilogue is built on Josh writing letters he can't send and never getting her answer, so delivering hers is the stronger close. Either way, add one closing beat for the desk .38 (recovered as evidence) so the loaded gun does not simply disappear.

**`spec_appearance-8`** · contradiction · Ch 27 · L8957–8957

- **Problem:** 'Joshua C. and Josh Caine are the same person' is vacuous — Joshua C(aine) IS Josh Caine. The breakthrough being described is that MARCUS WEBB (the guest-book alias, L8767/L8771) and Josh Caine are the same person. 'Joshua C.' appears nowhere else in the manuscript and reads as a stale alias from an earlier draft; in April 2024 the 'Joshua Michaels' rental application did not yet exist, so it cannot refer to that either.
- **Recommended:** 'Joshua C. and Josh Caine are the same person' is circular (Joshua C[aine] IS Josh Caine) and 'Joshua C.' has no antecedent. The breakthrough is matching guest-book alias MARCUS WEBB (L7811/L7813/L8887) to Josh Caine; the 'Joshua Michaels' rental alias postdates Apr 2024. Change to 'Marcus Webb.' Merged w/ range_D2-9.

**`spec_appearance-4`** · contradiction · Ch 27 · L8959–8959

- **Problem:** Ch 27's account of why police failed conflicts with Ch 26's on the same evidence: Ch 26 L8446 says 'Facial recognition came back empty because the original camera was 720p at best, corrupted by a power surge, timestamp scrambled' while Ch 27 L8959 says facial recognition returned 'hundreds of partial matches' from footage off 'the kind of system installed in the 1990s and never upgraded' (a 1990s analog system is not 720p). Empty-vs-hundreds and 720p-vs-1990s are direct factual mismatches between consecutive reveal chapters; the scrambled-timestamp claim also undercuts the precise 8:48 PM time of death given at L8893.
- **Recommended:** Ch 27 contradicts Ch 26 on the same evidence: L8446 says facial recognition 'came back empty' with a '720p... power surge... scrambled' file; L8959 says '1990s' system + 'hundreds of partial matches.' Harmonize Ch 27 to Ch 26 (720p + power-surge corruption; nothing usable). Single contiguous edit keeping the pixelated/lighting sentence. Merged w/ spec_plot-logic-12.

**`spec_plot-logic-9`** · canon · Ch 27 · L8965–8965

- **Problem:** Story Bible and CHAPTER_MAP diverge from the manuscript on a reveal-level fact. STORY_BIBLE (lines 84-88, 821, 844) says Eleanor is an Ashford whose family owns Thornewood, that she inherited it after Lily's death, and quotes a reveal line ('I own Thornewood. I inherited it when Lily died...') that does not exist anywhere in the manuscript; CHAPTER_MAP Key Reveal #3 likewise says she 'owns Thornewood.' The manuscript instead consistently has an unsold estate run by a third-party management company (L7811, L8887), Eleanor applying for the groundskeeper job (this line), and outside owners selling the estate in August 2025 (L10446). The manuscript version is internally coherent; the docs are wrong, and per project rules doc-vs-text divergences must be reconciled before they cause a bad 'fix.'
- **Recommended:** Author must decide which side is canon: does Eleanor OWN/inherit Thornewood (STORY_BIBLE L84-88/821/844 + CHAPTER_MAP Reveal #3), or is she a PI who got HERSELF HIRED as groundskeeper of an unsold, third-party-managed estate (the manuscript's consistent version — L1946 mgmt company, L7811/L8887 unsold, L8965 'Apply for groundskeeper position', L10446 outside owners sell 2025, L9732 funded by insurance+savings)? The manuscript is coherent and load-bearing across Ch25-33; the Bible even quotes a reveal line ('I own Thornewood. I inherited it when Lily died...') that appears NOWHERE in the manuscript. RECOMMENDED: adopt the manuscript's hired-groundskeeper version and fix the DOCS, not the manuscript — leave L8965 and all manuscript text unchanged. HOLD (not silent doc rewrite) because it reassigns a reveal-level fact and needs sign-off.

### LOW severity

**`range_C-21`** · pov · Ch 15 · L4693–4693

- **Problem:** Mid-scene tense drift in the Dec 17 keystroke-logger scene: it opens present tense ('I start with the most recent footage' L4667; 'The keystroke logger is small' L4681), slides into past for ~30 lines (L4687 'The timestamps were corrupted', L4693 'My hands shook', L4703 'I closed the laptop'), then returns to present at L4727 ('The library is cold'). Ch 15 oscillates present/past across scenes throughout (also L4765 and L5053 sections in past); this instance is the only shift inside a single continuous scene.
- **Recommended:** Author decision: one-pass present-tense conversion of L4687-4713. RECOMMENDED (convert simple-past narration; KEEP past-perfect anteriority): 'timestamps were corrupted'->'are corrupted'; 'My hands shook as I clicked'->'My hands shake as I click'; 'Someone had seen it all'->'has seen it all'; 'I stared at the screen'->'I stare'; 'The question was dangerous'->'is dangerous'; 'She had access'->'has access'; 'I closed the laptop. Pressed'->'I close the laptop. Press'; "This wasn't simple"->"This isn't simple"; 'I pulled out my phone. Checked'->'I pull out my phone. Check'; "Either it wasn't compromised"->"Either it isn't"; 'I whispered'->'I whisper'. Keep 'had been inside my laptop', 'had been monitoring me', 'what had I done to warrant' as past-perfect. Alternatively SKIP: chapter deliberately oscillates present/past across scene breaks (L4765, L5053).

**`spec_prose_v1-2`** · contradiction · Ch 23/24 · L7494–7498

- **Problem:** Two lines in the deliberate Ch 23/24 noon-visit echo are slightly broken where the rest match verbatim (L7040=L7476, L7046=L7480, L7054=L7488 all exact): Ch 23 L7058 has Eleanor say 'There's evidence in my cottage' while Ch 24 L7494 renders the same spoken moment as 'There's something in my cottage... Evidence. Truth.'; and Ch 23 L7062 'Seven hours for you to understand before they take you away' vs Ch 24 L7498 'Seven hours for you to understand the truth before they take you away.' Since the design intent is verbatim same-moment retelling, the drift is inconsistent within its own convention.
- **Recommended:** DECISION NEEDED (dependent on spec_prose_v1-1 / range_D1-4): once the door-visit chronology is settled, align the two drifting lines to one wording. RECOMMENDED: adopt Ch 24's stronger phrasing in Ch 23 — L7058 -> 'There's something in my cottage. In the locked room. Evidence. Truth. Everything you need to understand what's really happening.' and L7062 -> 'Seven hours for you to understand the truth before they take you away.' Apply as part of whichever chronology fix (Option A cut / Option B keep-both) is chosen so the noon dialogue is edited once, not twice.

**`range_E-9`** · timeline · Ch 33 · L10061–10061

- **Problem:** June 15, 2025 is a Sunday (and Father's Day); courts do not hold sentencing hearings on Sundays. The manuscript otherwise tracks real 2025 weekdays correctly (Epilogue Part One correctly places March 29 'on a Saturday'; the Mar 17 initial appearance is a Monday; the Apr 8 plea is a Tuesday), so a calendar-checking reader will notice. Canon docs (TIMELINE_MAP, Story Bible legal timeline) also carry Jun 15, so a change ripples into documentation.
- **Recommended:** DECISION: accept fictional-calendar license (keep June 15) OR move to a real weekday + update docs. RECOMMENDED: Monday, June 16, 2025 (one-day shift, real court day; 'less than three weeks after arrest' and 'over five/five-and-a-half years' L10111/L10131 all survive). Then edit L10061 ('June 15th'->'June 16th') and header L10089, and update TIMELINE_MAP, CHAPTER_MAP L329, STORY_BIBLE. Fri June 13 is an acceptable alternative.

### Drafted but failed continuity vet — need rework (2)

**`spec_timeline-13`** · Ch 9 · L2405 — before verbatim L2405. FAILS: 'March'->'April' contradicts L1946 ('previous groundskeeper leaving in March and Eleanor starting in April') and nullifies 'One month unaccounted for' (April-left+April-start=no gap). Loose part is 'seven months ago' (March-to-Nov ~8mo); fix that instead.

**`range_D1-15`** · Ch 25 · L7759 — before_text verbatim L7759; 'Rachel Winters' matches canon L525. FAIL: clause 'closed the roads AGAIN' asserts roads reopened ~Feb25 then re-closed — unestablished, contradicts continuous snow-in (L5537/L6364/L6755/L7428) and undercuts trapped premise. Revised clause avoids asserting a reopening.

### Marketing / metadata / build files (6 — unvetted, recommended edits)

The agent that drafts these failed to return, so they carry no vet stamp and were left for you. The first two are the urgent ones — they leak the twist on public-facing sales copy.

**`matter-1`** · HIGH · BOOK_DESCRIPTION.md (L33)
- The print back-cover copy stacks three T1 (DID) indicators in one sentence, violating the project's own cluster rule before the reader opens the book. 'Losing time' is the flagship forbidden category ('Memory gaps / lost time (any phrasing)', forbidden-terms.md L177) that has been repeatedly purged from the manuscript. Worse, 'memories that don't belong to him' implies Josh possesses ANOTHER IDENTITY'S memories — the most DID-flavored phrasing possible — and is also factually wrong: in the manuscript Josh wakes with NO memory (absences), never with foreign memories; the phrase appears nowhere in the text.
- Suggested: Rewrite as e.g. 'He's blacking out, waking to whole nights he can't explain—and he's certain Eleanor is behind it.' Keeps the menace, keeps the drugging attribution, removes the forbidden term and the dual-identity implication.

**`matter-4`** · MEDIUM · TITLE_PAGE.txt (L3)
- Subtitle mismatch between source matter files and the built books. TITLE_PAGE.txt L3, PRINT_FRONT_MATTER.txt L3, and FRONT_MATTER.md L22 all say 'A Novel', but all three built DOCX files (HARD_THRUST_KDP_PRINT.docx, HARD_THRUST_KINDLE.docx, HARD_THRUST_KDP_READY_v3.docx) carry the title-page subtitle 'A Dirty Thriller'. 'A Dirty Thriller' exists in no source file, and PUBLICATION_CHECKLIST.md L98 leaves the KDP Subtitle field blank — so there is no recorded decision either way.
- Suggested: Decide the canonical subtitle ('A Novel' vs 'A Dirty Thriller'), sync TITLE_PAGE.txt / PRINT_FRONT_MATTER.txt / FRONT_MATTER.md, record it in PUBLICATION_CHECKLIST.md, and confirm the cover art matches.

**`matter-5`** · MEDIUM · PRINT_FRONT_MATTER.txt (L31)
- Three divergent content notes are in circulation. (1) Source files (PRINT_FRONT_MATTER.txt L31, FRONT_MATTER.md L81, BOOK_DESCRIPTION.md L49) include 'serious illness' and 'memory loss'. (2) FULL_MANUSCRIPT.txt L6 says 'explicit sexual content, psychological manipulation, violence, and themes of trauma and memory'. (3) The shipped DOCX files carry a third version: 'explicit sexual content, violence, psychological trauma, and themes of grief, and moral ambiguity' — which contains a reader-visible grammar artifact ('themes of grief, and moral ambiguity', a leftover comma from deleting 'memory loss'). Dropping 'serious illness'/'memory loss' from the shipped note is the more spoiler-safe choice (T3/T1), but the sources disagree with the product and the shipped note has a typo.
- Suggested: Pick the canonical note (recommend the spoiler-safe shipped wording, fixed: 'This novel contains explicit sexual content, violence, psychological trauma, and themes of grief and moral ambiguity.'), sync PRINT_FRONT_MATTER.txt, FRONT_MATTER.md, BOOK_DESCRIPTION.md L49, and FULL_MANUSCRIPT.txt L6, then rebuild the DOCX files to remove the stray comma.

**`matter-2`** · MEDIUM · BOOK_DESCRIPTION.md (L19)
- The full Amazon description uses 'losing time' — the exact forbidden T1 phrasing ('any phrasing' per forbidden-terms.md L177) that four audit passes removed from the manuscript body. Mitigated by the immediate drugging attribution in the next sentence ('He's certain Eleanor is drugging him'), but the storefront copy should not reintroduce the term the manuscript was scrubbed of.
- Suggested: Drop the label and keep the concrete image: 'Josh starts waking with no memory of the night before, finding evidence he can't explain.'

**`matter-10`** · LOW · ABOUT_THE_AUTHOR.txt (L3)
- Stale relative to the bio actually shipped in all three DOCX builds, which reads 'a joke and an AI generated cover image' and 'with the assistance of Claude Code and other modern tools', and omits this file's closing line 'He writes dark romance and psychological thrillers.' The source file and the product disagree on wording; whichever is canonical should win everywhere.
- Suggested: Sync ABOUT_THE_AUTHOR.txt to the shipped DOCX wording (or rebuild the DOCX from the file if the file version is preferred). Decide whether the genre line stays.

**`matter-9`** · LOW · BOOK_DESCRIPTION.md (L13)
- 'Six deaths over four decades' is not a figure the manuscript supports. Josh's incident ledger (FULL_MANUSCRIPT.txt L818-834) lists seven deaths at/around the estate 1983-2020 (staircase 1983, ravine 1987, pond 1991, undated east-wing murder, exposure 2008, widow's walk 2012, strangulation 2020), plus the five recent disappearances he actually investigates. 'Six' also collides with the canonical six Marcus Webb attacks, inviting confusion between the estate's history and the killer's victim count. The rest of the sentence is accurate (Oregon confirmed, Lily murdered on the grounds Feb 2020, case unsolved).
- Suggested: Use a supportable framing: 'a string of deaths going back four decades, including a young woman murdered in 2020' — or 'seven deaths' if a number is wanted.

---

## Part B — Applied & committed (85 fixes, commit `260bfaf`)

Each passed an independent **spoiler** vet (no twist leak / no cluster) and an independent **continuity** vet (agrees with canon, timeline, surrounding text, voice). Grouped by severity, then line order.

### HIGH (13)

**`spec_appearance-1`** · contradiction · Ch 5 · L1202 — Josh is canonically a PAYING renter (L515 'priced desperately low...renting to someone'; L4505 'renting the mansion'), but this line calls Thornewood a remote 'position' with 'free housing' / 'near-zero expenses' — paid-
  - − The remote positions helped more than the writing ever had. Free housing, utilities, sometimes meals. Six months at Thornewood meant six months of near-zero expenses while I worked.
  - + The dark-history discount helped more than the writing ever had. Thornewood's rent was a fraction of what a place like this should cost—murder sites don't recover their value. Six months here meant si…

**`range_A-3`** · contradiction · Ch 6-7 · L1868 — The isolable defect is L2015 'drawn by instinct I couldn't explain' — a T1/T4-adjacent tell that contradicts the rational motive two lines up (L2009) and drops Josh's Ch6 flashlight lead (L1841-1843). Swap to a conscious
  - − I kept going, drawn by instinct I couldn't explain.
  - + I kept going, retracing the direction I'd watched Eleanor's flashlight take the night before.

**`spec_timeline-8`** · contradiction · Ch 9 · L2479 — Same-evening (Nov 14) contradiction: 'couldn't eat' vs. the stew dinner he eats (L2531) and is drugged by (L2612/L2626), journal-confirmed (L2648). Stew sequence is canonical (Ch15 depends on it), so 'couldn't eat'->'cou
  - − That night, I couldn't eat. Couldn't work. I sat in the library watching her cottage, thinking about that patch of disturbed earth.
  - + That night, I couldn't focus. Couldn't work. I sat in the library watching her cottage, thinking about that patch of disturbed earth.

**`spec_canon-1`** · canon · Ch 14 · L4614 — CANON POLICY: Eleanor does NOT drug Josh (gaps = fugue, pills = chemo), so her narration must not state dosing as fact — canon violation + reread cheat. Reframe L4614 from a drug claim to a clinical read of his breakdown
  - − I try to focus on his body instead of his questions. Signs of what the drugs are doing to him.
  - + I try to focus on his body instead of his questions. Signs of how far gone he is.

**`range_C-7`** · spoiler-T1 · Ch 17 · L5557 — Lone surviving exact DID-cluster term 'losing time' pre-Ch25 (siblings removed in prior passes); it anchors a dense memory-gap scene in the Ch17 danger zone. Scare-quotes attribute it to Eleanor's frame-job, so I keep th
  - − Getting footage of me looking disoriented so you can claim I'm 'losing time.'
  - + Getting footage of me looking disoriented so you can build your story around it.

**`range_C-6`** · spoiler-T1 · Ch 18 · L5777 — 6-signal T1 cluster in the Ch18 sex scene, but most beats are erotic choreography or an established throat motif whose thinning is authorial. One beat is a clean, non-erotic stray sentence: L5777's dual-self/internal-for
  - − The fury in him was barely contained now. Something volatile and dangerous pressing forward, straining against whatever held it in check.
  - + The fury in him was barely contained now.

**`spec_setup-payoff-5`** · pov · Ch 18 · L6057 — POV slip in an Eleanor section (loft, L6047). 'Not Rachel this time' is wrong twice: Rachel is exclusively Josh's agent, and the prior buzz in this scene was Dana (L6031). Reads as a Josh-draft leftover. Swap to the cont
  - − My phone buzzed again. Not Rachel this time. An old contact I'd been avoiding.
  - + My phone buzzed again. Not Dana this time. An old contact I'd been avoiding.

**`range_C-4`** · plot-logic · Ch 19 · L6108 — Kills a forward-reference: at Dec 26 in the loft Josh has NOT yet opened her laptop or seen the 'Timeline—Joshua Caine' doc — he first cracks it at L6254-6340 (Dec 27 2 AM), staged as fresh shock. Reword grounds the line
  - − The digital files I'd found on her laptop—the "Timeline—Joshua Caine" document, the tracking notes—they'd been only the surface.
  - + The cameras I'd found hidden through the mansion, the way she'd been watching me—they'd been only the surface.

**`range_D1-2`** · plot-logic · Ch 25 · L8055 — Only L8055 fixed; verifier flagged L7943/L8035 as INTENTIONAL (relationship-unknown per author intent L8637)—left untouched. L8055 'identity I still don't know' overshoots: board reads 'LILY ASHFORD' (L7787), Josh read i
  - − To the library where, apparently, I killed someone. Someone who mattered to Eleanor. Someone whose identity I still don't know. Five years ago in a fugue state I can't remember.
  - + To the library where, apparently, I killed someone. Someone who mattered to Eleanor. Someone whose place in her life I still don't know. Lily Ashford. A name on a wall. Everything and nothing. Five ye…

**`range_D2-3`** · canon · Ch 26 · L8436 — 'Outside Bend' contradicts Sarah Martinez canon (Portland resident 'Last seen near Thornewood trails' L1928; Bible L219 disappears near the estate). It also breaks the slip's logic: it works only because Lily journaled t
  - − You describe the hiking trail outside Bend where Sarah Martinez's body was found.
  - + You describe the eastern trail near Thornewood where Sarah Martinez's body was found.

**`range_D2-4`** · plot-logic · Ch 26 · L8438 — Date math inverted: repainted 'in 2018' means the Feb 2020 door was already brown, so a GREEN door + knocker describes the pre-2018 door, contradicting 'as it looked in February 2020' (Josh's only adult pre-2024 visit wa
  - − The door was repainted brown in 2018. The brass knocker was removed after the murder.
  - + The door was repainted brown later that year. The brass knocker was removed after the murder.

**`spec_plot-logic-1`** · plot-logic · Ch 27 · L8947 — 'Move every 18-24 months / Six cities' is refuted by the victim board: 3 Portland attacks, no move (L7795/L10099/L7799); 4 attacks in 8 months can't map to that cadence. Canon mechanism (per L8945) is fugue GAPS mapped t
  - − "You move," she says. "Every eighteen to twenty-four months, you move. New city. New apartment. New job or unemployment spell or 'remote work opportunity.' And every time you move, there's a gap. Thre…
  - + "It's the gaps," she says. "Every so often, there's a stretch—three to five days where you go dark. You're not posting online. Not responding to messages. Wherever you're living, you effectively disap…

**`spec_retro-5`** · timeline · Ch 27 (vs Ch 3/6/11) · L8969 — Merges two findings on one L8969 sentence. 'Secured within two weeks' of a MAY episode forced a June hire, contradicting the April start (L1946, Roy L3147, 'six months' by Oct22). And a fresh May episode can't exist — po
  - − You always circle back to places connected to trauma. Something draws you here—I understood the pattern before I understood why. And in May, your podcast started asking listeners about 'forgotten esta…
  - + You always circle back to places connected to trauma. Something draws you here—I understood the pattern before I understood why. Years ago your podcast flagged this place—a remote estate with a dark h…

### MEDIUM (41)

**`spec_timeline-24`** · timeline · Ch 3 · L800 — Oct 23 (DST) in the Oregon Cascades has sunset ~6:10 PM, so 'darkness by four-thirty' is a ~90-min winter error on the book's second day. Replace the clock claim with defensible ridge-shadow phrasing carrying no time, ma
  - − October days were short this far north, darkness creeping in by four-thirty.
  - + October days were short this far north, the light already sliding behind the western ridge by late afternoon.

**`range_A-5`** · contradiction · Ch 5 · L1520 — Same-day math breaks: 'reading since six AM' (L1198) + 'at this table until 3 AM' (L1228) = ~3 hrs sleep, vs 'slept well...seven, maybe eight hours' (L1520). L1520 is load-bearing for the drug inference, so I fix the pol
  - − "Last night," I said. "Been at this table until 3 AM reading through guest books. Time disappears when you're chasing patterns."
  - + "Last night," I said. "Lost track of the hour, reading through guest books. Time disappears when you're chasing patterns."

**`range_A-4`** · contradiction · Ch 5 · L1534 — Eleanor said 'Portland—landscaping' one day earlier (L1035); here it's 'from Seattle...teaching' (L1534), a flip Josh never registers. Story Bible confirms she really was a teacher (L125), so 'teaching stuff' is canon-tr
  - − "Storage, mostly. My old life from Seattle. Boxes I haven't unpacked yet—teaching stuff, books, photos.
  - + "Storage, mostly. My old life. Boxes I haven't unpacked yet—teaching stuff, books, photos.

**`range_A-8`** · timeline · Ch 5 · L1612 — The recap reads as if dinner HAPPENED at eight/eight-thirty, but dinner was set for six (arrival 5:45, L1456). Dropping 'finished' created a start-time contradiction inside the book's first on-page memory gap. Restore en
  - − Dinner at eight? Eight-thirty? I could account for the fire, the wine, her hand on my knee.
  - + We'd finished dinner at—eight? Eight-thirty? I could account for the fire, the wine, her hand on my knee.

**`range_A-7`** · prose · Ch 7 · L2157 — Orphaned draft remnant: 'jogging' has no referent — the preceding beat (L2155) has Eleanor inside 'reviewing her own notes,' and 'jogging' never otherwise appears in Josh's storyline. Re-anchor to what's on the page so t
  - − Or maybe she was doing more than jogging.
  - + Or maybe she was doing more than reviewing notes.

**`spec_timeline-14`** · timeline · Ch 9 · L2485 — Nov 14 inversion: car returns 6:15 PM (L2475), past mid-Nov dark, yet she 'emerged at dusk to tend her garden.' Reframed to a post-return evening lawn crossing (fits 6:15 return; bridges into the stew). Keeps wave/smile/
  - − When Eleanor emerged from her cottage at dusk to tend her garden, she waved at me through the library window. Smiled that gentle smile I'd come to know.
  - + When Eleanor crossed the lawn that evening, she paused and waved at me through the library window. Smiled that gentle smile I'd come to know.

**`spec_setup-payoff-10`** · setup-payoff · Ch 9 · L2728 — All six are J-names echoing 'Josh'; three echo canon: 'J. Martinez'/'Josh McKenzie & Sarah' (2019) mirror victim Sarah Martinez (2019), 'Joshua Brennan' mirrors attorney Brennan (L9617). Alias is Marcus Webb (M), so the 
  - − *Joshua Brennan, 2018* / *Josh McKenzie & Sarah, 2019* / *J. Martinez, 2019* / *Joshua Torres, 2021* / *Jason Campbell, 2020* / *Jordan Cross, 2021*
  - + *Rebecca Hale, 2018* / *The Okafor Family, 2019* / *D. Prentice, 2019* / *Grant Whitlock, 2020* / *Nadia Ellison, 2021* / *Theo Barrett, 2021*

**`spec_timeline-15`** · timeline · Ch 9 · L2801 — Oct 22=day 1, so 'day twenty-three'=Nov 13 — but this scene sits after Nov 14, 'The next day' (L2660), and 'A few days later' (~Nov 18, L2662), flowing into the 12:44 AM talk (~Nov 14-15). The wrong day-count makes reade
  - − By midnight of day twenty-three, I'd found two more pieces of evidence I couldn't explain.
  - + By midnight, I'd found two more pieces of evidence I couldn't explain.

**`spec_timeline-16`** · timeline · Ch 10 · L2952 — Ch10 headed 'November 14' but opens 'the morning after the storm' (L2952)=Nov 9 (storm Nov 8, L2238), before jumping to the Nov 14 journal (L3004). Re-heading to 'November 9-14' matches Ch9's ranged header (L2385). COMPA
  - − # CHAPTER 10: THE COST / ## November 14 — Eleanor
  - + # CHAPTER 10: THE COST / ## November 9-14 — Eleanor

**`spec_appearance-5`** · appearance · Ch 12 · L3832 — Corrects the manuscript's only 'peacoat' to Josh's canon garment: his brown leather jacket (his Ch1 L21 description; Eleanor's Ch2 L216 'that leather jacket'). Dark-canvas contrast preserved; only the reference garment f
  - − The jacket in his closet that appeared one day—dark canvas, completely nondescript. Not the wool peacoat he usually wore.
  - + The jacket in his closet that appeared one day—dark canvas, completely nondescript. Not the brown leather jacket he usually wore.

**`range_B-12`** · timeline · Ch 13 (vs Ch 12) · L4159 — Same-day (Dec 10) clash with Ch 12, which says the estate has been 'trapped...roads impassable since November' (L3686). Ch 13's 'snowed in completely by morning' wrongly implies Josh isn't trapped yet, and 'coming down h
  - − The snow was coming down heavily now, and if I didn't relocate it to the cleared area near the mansion, I'd be snowed in completely by morning.
  - + The snow was picking up again, and if I didn't relocate it to the cleared area near the mansion, it'd be buried where it sat by morning.

**`range_B-7`** · plot-logic · Ch 14 (vs Ch 11/13) · L4620 — Continuity: Josh proposes cameras as new on Dec 12 and Eleanor answers as if new, but his hidden camera network exists since mid-Nov (L3305, bedroom cam L3333) and Eleanor knows (L3469). Reframe his line as redirecting/a
  - − I need to document it. Cameras. I need to set up cameras.
  - + I need to document it. More cameras—pointed at me this time.

**`range_C-8`** · contradiction · Ch 15 · L4653 — Ch 15 opener contradicts Ch 14 on the Dec 12 blackout: (a) time — Ch 14 L4556 'past one'/L4558 '13:15' is not 'late afternoon'; (b) injury — Ch 14 L4558 'a scratch on his knuckles' (sing.) vs 'scratches on my forearm' (p
  - − returned in the late afternoon with scratches on my forearm and a bruise I couldn't account for
  - + returned just past one in the afternoon with a scratch on my knuckles and a bruise I couldn't account for

**`range_C-9`** · contradiction · Ch 15 · L4865 — Phantom prop: scene is wine-less — 'fourth coffee' (L4727), 'Leftover stew' (L4809), trigger before eating (L4817). M4b imported 'the wine' at L4865, echoed L4879. Both must change together or a half-fix persists. Applie
  - − Nausea rolls through me in waves. Every fiber of my body feels wrong—not angry, not controlled, just hollowed out and humming with whatever she put in the wine. /  / *No. Not this. Not now. Not her.* …
  - + Nausea rolls through me in waves. Every fiber of my body feels wrong—not angry, not controlled, just hollowed out and humming with whatever she'd been putting in the food. /  / *No. Not this. Not now.…

**`range_C-10`** · spoiler-T1 · Ch 15 · L4897 — Half-applied M4b residue. L4865 now says 'not angry, not controlled', but 32 lines on L4897 re-asserts 'my hand clench' + 'the aggression in my eyes' — the exact beats M4b removed. Internal contradiction plus a surviving
  - − Had seen my hand clench. Had seen the aggression in my eyes. Had seen me fighting my own poisoned body.
  - + Had seen my hand spasm. Had seen the panic in my eyes. Had seen me fighting my own poisoned body.

**`range_C-11`** · spoiler-T1 · Ch 16 · L5218 — Ch 16 (Eleanor POV, danger zone) hits the 3+ DID cluster: L5204 'some part of you is afraid' (parts-language), L5218 'Something dark stirring beneath the surface' (dark other-thing in Josh — class of removed Ch 22 'lived
  - − Unease he couldn't explain. Something dark stirring beneath the surface.
  - + Unease he couldn't explain.

**`range_C-15`** · setup-payoff · Ch 16 · L5240 — Dangling falsifiable deadline: Dec 17 + 'Seven days' (L5240) = Dec 24, premised on 'roads would reopen' (L5238) — disproven next chapters: Dec 24 'impassable' (L5439), passable only March (L9210); Dec 27 aborts (L6664). 
  - − Seven days. After that, the opportunity would be gone. Then I'd take what I wanted from him. One way or another.
  - + Days, maybe a week or two, before the roads reopened for good. Then I'd take what I wanted from him. One way or another.

**`range_C-13`** · timeline · Ch 18 · L6037 — Cross-chapter storm slip. Ch18 is Dec 26 (L5681); 'cleared two days ago' = Dec 24, but Ch17 has the storm arriving Dec 24 (L5439) with fresh snow at dawn Dec 25 (L5650), and Ch19 calls it 'yesterday's storm' on Dec 26 (L
  - − All lies. The storm had cleared two days ago. Signal was fine.
  - + All lies. The storm had cleared overnight. Signal was fine.

**`range_C-14`** · contradiction · Ch 19 · L6220 — Self-contradiction fix. The sentence opens 'She'd been tracking me for two years' (L6220); two years back from Dec 2024 is 2022, matching L6170 fifty lines earlier ('going back two years... since at least 2022') and Ch 2
  - − Surveillance photos of me going back to 2023.
  - + Surveillance photos of me going back to 2022.

**`spec_timeline-17`** · timeline · Ch 19 · L6360 — Daylight error: late-Dec Oregon Cascades sunrise ~7:40 AM, so 4:47 AM is ~3h pre-dawn; author treats winter dawn as ~7 AM elsewhere (L6597, 6:47 AM Feb 4 = 'gray line on the horizon'). Removes the false 'Almost dawn' but
  - − 4:47 AM. Almost dawn. Eleanor would be awake soon.
  - + 4:47 AM. Still hours until light, but Eleanor would be awake soon.

**`spec_timeline-19`** · timeline · Ch 20 · L6399 — Canon fixes Eleanor's arrival ~April 2024 (Ch12 L3828 'six months before Josh'; Ch18 L5723 'installed in April'; Ch24 L7682 Feb28 'better part of a year'). April-Dec27 = ~8 months, so 'Six months' rewinds her residency a
  - − The memories I couldn't let go of. Six months of living in this loft room, trying to make sense of things.
  - + The memories I couldn't let go of. Eight months of living in this loft room, trying to make sense of things.

**`spec_timeline-18`** · timeline · Ch 20 · L6549 — Scene timestamps this at ~5:10 AM (L6531 '5:04 AM. Still dark,' then she locks up and steps out). At ~44N late-Dec first light is ~7:10, so 'dawn was breaking' is ~2h early and contradicts 'Still dark' 18 lines up. Swapp
  - − Outside, the first gray light of dawn was breaking over the mountains. December 27, 2024. The day I'd finally stop hiding.
  - + Outside, the mountains were still black against a starless sky. December 27, 2024. The day I'd finally stop hiding.

**`range_D1-5`** · contradiction · Ch 23 · L6780 — Josh's doc invents an Eleanor prompt and 'same style' pairing that contradict Ch 13 L4231 (he finds them himself at night; brown hiking vs unfamiliar black muddy — NOT same style). Rewrote to match Ch 13. Stays in the pr
  - − **Why It's Impossible:** I never bought these boots. I only noticed them when Eleanor asked why I had two pairs of the same style. They appeared in my closet without explanation.
  - + **Why It's Impossible:** I never bought these boots. I found them in my closet one night in December, sitting beside my own hiking boots—black, muddy, my size, a pair I'd never seen before. They appea…

**`range_D1-3`** · plot-logic · Ch 23 · L7090 — Ch 19 L6358 'Backed it up twice' but Ch 23 treats the single drive from his laptop bag (L7090) as the 'only proof' (L7092); the two backups vanish and L6860 reminds he multi-copies. Fixed at source: removed the backups a
  - − I copied everything to an encrypted drive. Backed it up twice. This was evidence—evidence of Eleanor's deception, her surveillance, her connection to the 2020 murder.
  - + I copied everything to an encrypted drive and hid it in my laptop bag. This was evidence—evidence of Eleanor's deception, her surveillance, her connection to the 2020 murder.

**`spec_timeline-20`** · timeline · Ch 23 · L7165 — Feb 28 Oregon sunset ~5:58 PM, so 5:03 PM cannot be 'full dark.' Softened to 'the light nearly gone now' (deep dusk), consistent with nearby 'in the dark' (L7173) as loose near-dark usage. Ch 24's mirror (L7586) makes no
  - − At 5:03 PM, full dark now, movement on the perimeter cameras.
  - + At 5:03 PM, the light nearly gone now, movement on the perimeter cameras.

**`range_D1-9`** · plot-logic · Ch 23 · L7289 — Josh builds a heavy barricade (oak desk, dining chairs, coat rack — L6739; chapter titled THE BARRICADE) then exits by simply 'unlocked the front door' with no dismantling — a required, plot-salient action elided. Added 
  - − Checked that my phone was fully charged. Emergency contacts ready. /  / And unlocked the front door.
  - + Checked that my phone was fully charged. Emergency contacts ready. /  / Then I cleared the barricade. Dragged the heavy desk aside, unstacked the dining chairs, moved the coat rack—ten minutes spent u…

**`range_D1-10`** · plot-logic · Ch 25 · L7737 — Ch25 stages the evidence room as first-sight shock, but Josh saw these exact walls in the Dec break-in (L6220 files/surveillance/maps; L7103 'been in there once'). Post-reveal (L7743>L7717) so frame language is fine. Min
  - − And my face among them. Dozens of photos of me. Surveillance shots. Candid moments. Images I didn't remember being taken.
  - + And my face among them. Dozens of photos of me. Surveillance shots. Candid moments. Images I didn't remember being taken. /  / I'd stood in this room once before, in December. Told myself it was a fra…

**`spec_retro-7`** · contradiction · Ch 25 · L7865 — Collision: 'fifth person on your list' indexes a real victim (fifth recited = Kevin Chen L7857) but 'hiker who disappeared in 2018' matches nothing—victims run 2019-2022 (L1928-1940), no 2018 hiker. Fix reframes it as an
  - − "The fifth person on your list," Eleanor continues, pulling up a file on her laptop. "The hiker who disappeared in 2018. That one wasn't you. Wrong timeframe, wrong pattern. Your research was mostly c…
  - + "There was one case in your notes that wasn't you," Eleanor continues, pulling up a file on her laptop. "A hiker who vanished in 2018—before your pattern started. Wrong timeframe, wrong method. Your r…

**`range_D1-8`** · pov · Ch 25 · L7919 — Pure tense slip: Ch25 is present tense from L7771 and holds it (L7917 'I'm sitting now'; L7939 'She crouches'), but this island reverts to past ('said', 'tilted', 'knew', 'was', 'said', 'stared'). Mechanical conversion, 
  - − "The keystroke logger," I said suddenly. "On my laptop. I found monitoring software I didn't remember installing." /  / Eleanor tilted her head. "I didn't install it." /  / "Then who—" But I already k…
  - + "The keystroke logger," I say suddenly. "On my laptop. I found monitoring software I didn't remember installing." /  / Eleanor tilts her head. "I didn't install it." /  / "Then who—" But I already kno…

**`range_D2-6`** · contradiction · Ch 26 · L8206 — Eleanor is in the cottage loft/evidence room, yet steps outside, crosses the grounds toward the mansion, then 'unlock[s] the cottage evidence room' she just left — before Josh walks from the mansion to her cottage (L8244
  - − Then I open the door and step outside. /  / The mansion looms ahead. Josh will be waking soon. Getting ready. Preparing himself for whatever he thinks is coming. /  / He has no idea. /  / I cross the …
  - + Then I open the door and step outside for one breath of cold air. /  / The mansion looms across the grounds. Josh will be waking soon. Getting ready. Preparing himself for whatever he thinks is coming…

**`spec_appearance-9`** · plot-logic · Ch 27 · L8893 — The minute-precise 8:48 PM is unsupportable: ME dated death only to a DAY (L8905), Ch 26 L8446 says the footage timestamp was scrambled, and 8:48 contradicts Ch 17's 'between nine and midnight.' Blur to 'evening' to matc
  - − Lily strangled in mansion library. Time of death: approximately 8:48 PM. Four minutes from first contact to death.
  - + Lily strangled in mansion library. Time of death: late evening. Four minutes from first contact to death.

**`range_D2-14`** · contradiction · Ch 27 · L8901 — Discoverer contradicts the Ch 7 news article at L1995 ('hikers had found the body... off an old logging trail'). Same case, two discoverers. Sync L8903 to the earlier established version (hikers, logging trail); keep 'qu
  - − **MAY 2020:** Spring caretaker discovers remains in woods, quarter-mile from mansion.
  - + **MAY 2020:** Hikers discover remains in woods, quarter-mile from mansion, off the old logging trail.

**`spec_retro-12`** · contradiction · Ch 27 (vs Ch 3) · L9065 — Josh's on-page list carries this entry as 'Undated — Woman murdered in east wing' (L824), year scrubbed for T4, while every other entry (1983/87/91/94) has a year. 'The 1998 murder... in my research' contradicts what the
  - − I stare at the report. "That's on the list of incidents. The 1998 murder. I saw it in my research. What does that have to do with—"
  - + I stare at the report. "That's on the list of incidents. The east wing murder. I saw it in my research. What does that have to do with—"

**`spec_retro-8`** · contradiction · Ch 28 (vs Ch 1-3) · L9206 — False full-circle callback: no shared-scotch scene exists on the first night (Oct 22 they part outside; first shared evening was Oct 28 over WINE; scotch appears only here + present-scene L9228). Broadening 'first night'
  - − The leather wingback chairs face each other across the hearth—the same chairs where we sat that first night in October, when I poured him scotch and he told me about his research. When I looked into h…
  - + The leather wingback chairs face each other across the hearth—the same chairs where we sat through those first weeks in October, when he told me about his research and I looked into his eyes and saw n…

**`spec_retro-10`** · contradiction · Ch 28 (vs Epilogue Part One) · L9306 — 'Scattered her ashes' (sole ashes mention) contradicts buried-body canon: body FOUND at Thornewood clearing (Ch 7 L2065), Eleanor tends a cairn there (L2021), epilogue shows a Portland grave with granite headstone '1997-
  - − You were walking the grounds where I scattered her ashes.
  - + You were walking the grounds where she died.

**`range_E-5`** · contradiction · Ch 28 · L9460 — Prop teleport: phone starts on the desk (L9214) but both side pockets hold taser/spray; Eleanor stands (L9306), backs into the bookshelf (L9368), never returns to the desk, yet L9460/L9474 have the phone in her pocket. A
  - − My phone sits on the desk behind me, ready. The taser is in my right pocket, fully charged. My backup—a canister of pepper spray—is in my left.
  - + My phone is in my back pocket, ready. The taser is in my right pocket, fully charged. My backup—a canister of pepper spray—is in my left.

**`range_E-4`** · contradiction · Ch 30 · L9734 — Contradicts canon: Ch 26 L8574 'Glioblastoma multiforme. Stage four. Diagnosed eighteen months ago' and STORY_BIBLE L805. 'Stage three...stage four within months' invents a progression (GBM is grade IV, not staged). Alig
  - − The cancer showed up somewhere in the middle. Stage three when I found it, stage four within months.
  - + The cancer showed up somewhere in the middle. Stage four from the day they found it. Eighteen months, they said, if I was lucky.

**`range_E-6`** · contradiction · Ch 30 · L9736 — Retro-explanation inverts on-page pattern: ELEANOR makes the town/grocery runs (Ch 11 L3069, Ch 17 L5316); Josh's only town trip is the Dec 12 fugue Eleanor watches from Thornewood (Ch 14 L4556-58). Reframing around her 
  - − I scheduled treatments on Josh's supply-run days, drove to Medford and back while he was in town buying groceries. Told him I was visiting a cousin in Ashland. He never questioned it.
  - + I scheduled treatments around my own supply runs—left before dawn, told him the drive to decent groceries and back took most of a day, that I looked in on a cousin in Ashland while I was down there. H…

**`range_E-7`** · timeline · Ch 31 · L9813 — Day-count anchored to the OSH eval-wing room, which Josh reaches only after the Mar 17 initial appearance (Brennan Mar 16: 'initial appearance tomorrow,' L9667). By Mar 19 he's been in 14B ~2 days, not four. The correct 
  - − But after four days, the beige starts to press in, suffocating.
  - + But after two days, the beige starts to press in, suffocating.

**`range_E-3`** · contradiction · Ch 32 · L9884 — Same-scene contradiction: 'taken language processing...only impressions' is contradicted by Eleanor's fluent complex dialogue all chapter (L9938, caterpillar recall L9978-94). Narrowing to following a sustained read-alou
  - − I can't follow the words anymore. The tumor has taken language processing, left me with only impressions. But I hear her voice. Familiar. Warm. Safe.
  - + I can't follow the story anymore—the sentences slip away before they connect, leaving only the shape of them. But I hear her voice. Familiar. Warm. Safe.

**`range_E-1`** · plot-logic · Ch Epilogue Part One · L10317 — Inverted arithmetic at Eleanor's climax: bedrooms are the daughters' rooms; Lily dead = one empty now, Eleanor dying = two soon. Nothing moves in, so an empty count can't drop 2->1. Intended beat: 'one now, two soon.' Ve
  - − Mom and Dad will go home to a house with two empty bedrooms now. In a few weeks, just one.
  - + Mom and Dad will go home to a house with one empty bedroom now. In a few weeks, two.

### LOW (31)

**`range_A-19`** · encoding · Ch 3 · L607 — Formatting-only patch artifact in the pill-crushing scene: L607/L609/L613 carry a stray 2-space indent (neighbors flush-left) and L613 jams into L614 with no blank line. Strip the indents and insert the paragraph break s
  - − I watched, unable to look away. She scraped the powder into something I couldn't see from this angle—a glass, maybe, or a small container. /  /   The deliberate, practiced way she did it made my skin …
  - + I watched, unable to look away. She scraped the powder into something I couldn't see from this angle—a glass, maybe, or a small container. /  / The deliberate, practiced way she did it made my skin pr…

**`spec_setup-payoff-11`** · setup-payoff · Ch 3 · L836 — The 2012 widow's-walk death carries an explicit research promise ('mental note to research it later') never paid off anywhere. Cutting only that sentence removes the unpaid Chekhov while keeping the gothic texture and th
  - − The owner sold immediately after, which suggested guilt or grief or both. I made a mental note to research it later, see if anyone had looked deeper into that death.
  - + The owner sold immediately after, which suggested guilt or grief or both.

**`range_A-14`** · plot-logic · Ch 5 · L1442 — Josh tells Eleanor he was 'at the desk all afternoon' though he hiked to the campsite on-page (L1378-1390) and dropped his stated plan to watch her reaction (L1390). The unmarked lie can misparse as a memory gap (early T
  - − Total immersion. Time stops meaning much when I'm really in it." /  / "Your body telling you to slow down."
  - + Total immersion. Time stops meaning much when I'm really in it." /  / The campsite could wait. I wanted more before I tipped my hand—wanted to watch her face when I finally raised it, not now. /  / "Y…

**`range_A-18`** · pov · Ch 6 · L1673 — Isolated tense slip: Ch6 is firmly present tense ('We eat...I ask'), but this couplet drops to past ('wasn't...poured') mid-scene. Convert to present to match. Proofreader-level; no plot/spoiler impact.
  - − My hand wasn't quite steady as I poured the wine. Too much caffeine today. Not enough food. The usual.
  - + My hand isn't quite steady as I pour the wine. Too much caffeine today. Not enough food. The usual.

**`range_A-11`** · spoiler-T1 · Ch 7 · L1858 — Ch7's library sequence stacks memory-anomaly beats near the 3-per-scene DID-cluster threshold. Trim the weakest, redundant leg — the failed-backward-counting sentence — leaving the benign routine-blur and date stamp. Cut
  - − the boundaries between them growing soft. I tried to count backward and couldn't quite pin down which day was which. November 8th, my phone said.
  - + the boundaries between them growing soft. November 8th, my phone said.

**`range_A-15`** · timeline · Ch 7 · L2131 — At 5:45 PM on Nov 8 (~44N Oregon, twilight ends ~5:20 PM, far shorter than the late-Oct anchor at L800) it would be FULL dark, not 'nearly dark.' Fix the daylight value, cut 'Right on schedule.' (schedule never establish
  - − When I finally made it back to the mansion, it was nearly dark. I'd spent the entire afternoon mapping the estate—every trail, every clearing, every vantage point, every place Eleanor might go—documen…
  - + When I finally made it back to the mansion, it was full dark. I'd spent the afternoon walking the eastern trails—marking clearings and vantage points, documenting them with GPS coordinates and photos.…

**`range_A-12`** · spoiler-T1 · Ch 7 · L2213 — 'tried to remember who I was' is literal dual-identity vocabulary 5,500+ lines pre-reveal, capping a chapter with soft memory hedging. It reads figurative but sits in the forbidden identity-confusion register. Swap to a 
  - − I sat in the dark and tried to remember who I was.
  - + I sat in the dark and tried to remember why I'd come here.

**`range_A-17`** · prose · Ch 6/8 · L2246 — Greeting 'Hey. I was hoping you'd come over.' is verbatim at Ch6 L1659 and Ch8 L2246, one in-story day apart. Anchored on Ch8's distinct smile beat (unique to L2244) for a unique match; varied only the greeting into a st
  - − He smiles when he sees me. That slow, genuine smile that means his guard is dropping. Good. That's what I need. /  / "Hey. I was hoping you'd come over."
  - + He smiles when he sees me. That slow, genuine smile that means his guard is dropping. Good. That's what I need. /  / "Hey. You read my mind—I was about to call and see if you'd brave the weather."

**`range_B-19`** · prose · Ch 11 · L3037 — Cuts the L3037 duplicate ('The insomnia was getting worse.' restated verbatim next line) and folds the two whiplash melatonin lines into one, keeping the 'to be safe' drug-suspicion beat and 'clear from your system' misd
  - − I checked my phone: 3:47 AM. I'd gone to bed at midnight. Three and a half hours of sleep, if I'd slept at all. The insomnia was getting worse. /  / I rubbed my eyes. The insomnia had gotten worse thi…
  - + I checked my phone: 3:47 AM. I'd gone to bed at midnight. Three and a half hours of sleep, if I'd slept at all. /  / I rubbed my eyes. The insomnia had gotten worse this past week—barely four hours of…

**`spec_prose_v1-6`** · encoding · Ch 11 · L3053 — Normalizes the 7 curly apostrophes (U+2019) on L3053 and L3059 to straight ASCII to match the manuscript majority. Span covers the full L3053–3059 block for a unique exact match; all other text is byte-identical (L3057's
  - − It was one thing to have suspicions; it was another to have evidence. I was a journalist. I dealt in facts. And the most basic fact of all—who Eleanor Moore even was—was a complete blank. Last week, I…
  - + It was one thing to have suspicions; it was another to have evidence. I was a journalist. I dealt in facts. And the most basic fact of all—who Eleanor Moore even was—was a complete blank. Last week, I…

**`spec_prose_v1-3`** · prose · Ch 12 · L3934 — L3934 recycles Ch7 L2175's exact eavesdrop staging (cracked cottage window + 'an inch' + Josh overhearing Eleanor). Turns the accidental echo into an intentional habit-callback ('again… the way she always left it'). Pres
  - − The window was cracked open—an inch, enough for air circulation. Enough for her voice to carry in the still December evening.
  - + The kitchen window was cracked open again—an inch, the way she always left it, even in December. Enough for her voice to carry.

**`range_B-18`** · pov · Ch 14 · L4553 — Ch 14 runs present tense ('He's been gone for seven hours' L4552; 'I watch the empty driveway' L4556; 'his truck finally returns' L4558), but these clauses drop to past. Convert to present. Minimal; POV/voice unchanged. 
  - − My shoulders ached from tension. I rolled my neck, heard it crack, and kept working. No time to stop.
  - + My shoulders ache from tension. I roll my neck, hear it crack, and keep working. No time to stop.

**`range_B-20`** · prose · Ch 14 · L4600 — Dangling reference: 'He admits it has.' has no antecedent — the prior line is '"What happened out there?" I ask. "You look like hell."' Minimal fix attaches the admission to 'You look like hell' and keeps the clipped nar
  - − He admits it has. Blames stress. Insomnia. Trauma responses from childhood.
  - + He admits he looks like hell. Blames stress. Insomnia. Trauma responses from childhood.

**`range_C-17`** · spoiler-T3 · Ch 15 · L5023 — Orphan symptom: nothing in Ch 15 shows Eleanor's hand trembling — shown beats are stiff/slow shoveling (L4791) and shoulders shaking from sobbing (L4995); all other tremors are Josh's. L5023 'her trembling hand' also nud
  - − For explanations of what I'm seeing in her trembling hand.
  - + For explanations of what I'm seeing—the slowed steps, the way she'd braced against her knees and broken.

**`range_C-20`** · timeline · Ch 17 · L5247 — Ch17 spans Dec 21 through the Dec 25 6:23 AM email (L5626), but its header shows one date. Every other multi-day chapter uses a range (Ch15 'December 14-19' L4647, Ch19 'December 26-27' L6078). Extend the header to the a
  - − ## December 21 — Josh
  - + ## December 21-25 — Josh

**`range_C-18`** · canon · Ch 20 · L6385 — Cottage-geography slip. Canon: single-story cottage + ladder loft (L6096); Eleanor's bedroom is ground-floor (L6704 — she hears the front-door lock from bed). From a ground-floor bed the clock is on the SAME level, so 'd
  - − listening to the grandfather clock downstairs mark every passing minute
  - + listening to the grandfather clock in the front room mark every passing minute

**`range_C-22`** · prose · Ch 22 · L6692 — Consecutive paragraphs both close on the identical 'use X against him' construction (L6692 'use what I knew against him' / L6694 'use everything I'd collected against him'). Merging into one beat keeps the time-pressure 
  - − Josh was circling something he couldn't name and couldn't escape. And I was losing my chance to use what I knew against him. /  / And when the time came, I'd finally use everything I'd collected again…
  - + Josh was circling something he couldn't name and couldn't escape. And I was running out of time. When the moment came, I'd have to use everything I'd collected at once.

**`range_D1-13`** · prose · Ch 24 · L7510 — Editing remnant: 'My fingers wouldn't work properly. My fingers especially—' repeats 'My fingers,' where the second clause wants a broader antecedent. Changed the first to 'My hands.' Sits on Ch 24's single T3-adjacent b
  - − My fingers wouldn't work properly. My fingers especially—the cold making them stiff and clumsy, or maybe stress, exhaustion, the weight of everything finally breaking me down.
  - + My hands wouldn't work properly. My fingers especially—the cold making them stiff and clumsy, or maybe stress, exhaustion, the weight of everything finally breaking me down.

**`range_D1-12`** · contradiction · Ch 24 · L7542 — Eleanor sees 'Three dots... Josh typing... Started to respond. Stopped.' (L7542) after her 2:18 PM text, but Josh's POV (L7125-7137) has him only stare, delete her message, turn phone face-down — never composes. Reconcil
  - − I deleted the message. /  / Turned the phone face-down. /  / Didn't respond.
  - + I started to type a reply. Deleted it before I could send. /  / Deleted her message too. /  / Turned the phone face-down. /  / Didn't respond.

**`spec_retro-15`** · timeline · Ch 26 · L8518 — The footage viewing runs in daylight — Josh arrives 'exactly 9 AM' in 'early morning light' (L8244) and leaves 'in the morning light' (L8598), one continuous morning — so Eleanor's two 'tonight's (L8518) are leftovers fr
  - − "Not yet," I say. "There's more you need to know. More I need to show you. But not tonight. You can't handle any more tonight."
  - + "Not yet," I say. "There's more you need to know. More I need to show you. But not today. You can't handle any more today."

**`spec_prose-6`** · prose · Ch 26 · L8526 — 'His voice breaks' (Josh) appears twice in the same Ch 26 evidence-room scene — L8412 and L8526, ~114 lines apart — the only same-scene same-phrase voice duplicate (the other two, L4588/Ch14 and L9458/Ch29, are separate,
  - − "Can I..." His voice breaks. "Can I watch it again?"
  - + "Can I..." His voice is barely there. "Can I watch it again?"

**`range_D2-18`** · prose · Ch 27 · L8837 — Josh vomits in the bathroom twice in one scene (L8837 and the fuller L8913 beat), and the first reads mid-room ('...violent heaves. / I turn back to her.' with no exit/return). Downgrade the first to a swallowed-bile rea
  - − I run to the bathroom. My stomach empties in violent heaves. /  / I turn back to her.
  - + Bile floods my mouth. I swallow it down, hard. /  / I turn back to her.

**`spec_plot-logic-11`** · timeline · Ch 27 · L8857 — Josh found the freshly turned earth in Ch 9 (Nov 9-14), still the FIRST month of his stay, so Eleanor's 'second month' (Nov 22+) cannot precede it and contradicts L8853's own 'Every day for the first month.' Minimal cano
  - − "A contingency." Her voice doesn't waver. "I dug it the second month, when I was still planning to kill you.
  - + "A contingency." Her voice doesn't waver. "I dug it that first month, when I was still planning to kill you.

**`range_D2-19`** · pov · Ch 27 · L9167 — Isolated past-tense slip inside Ch27's present-tense closing narration, between L9165 'I climb the steps... Go inside' and L9169 'I sit in the chair... Watch the dawn come' (both present). Converted the verbs to present 
  - − The library was smaller than it had been that first day. The same dark wood, the same leather chairs—but now the walls seemed to press in, the shadows deeper. As if the house itself had been waiting f…
  - + The library is smaller than it was that first day. The same dark wood, the same leather chairs—but now the walls seem to press in, the shadows deeper. As if the house itself has been waiting for this …

**`range_D2-23`** · plot-logic · Ch 28 · L9222 — Eleanor lives in the cottage ~100yd off and can't literally hear Josh punch a bedroom wall; her surveillance feeds are established (Ch 2 L226). 'Over the feed' invokes that capability and works whether she was in cottage
  - − The wall in his room, I'd guess. I heard the impact around 3 AM, when neither of us was sleeping.
  - + The wall in his room, I'd guess. I'd heard it over the feed around 3 AM, when neither of us was sleeping.

**`range_D2-24`** · prose · Ch 28 · L9294 — Reference-frame wobble: 'their mother' (3rd person) collides with 'I'd' (1st person) for the same referent, Eleanor. She IS the sister/narrator, so 'our mother' is correct and consistent with 'I'd keep her safe.' One-wor
  - − underneath is Lily's sister, the girl who braided her hair and taught her to ride a bike and promised their mother I'd keep her safe
  - + underneath is Lily's sister, the girl who braided her hair and taught her to ride a bike and promised our mother I'd keep her safe

**`spec_retro-16`** · prose · Ch 29 · L9639 — Missing comma inside the dialogue tag; insert before the closing quote. Pure copyedit.
  - − "I'll do the evaluations" I interrupt.
  - + "I'll do the evaluations," I interrupt.

**`range_E-10`** · contradiction · Ch 29 · L9649 — Recap overstates Ch 28: Josh reached 2-3 ft, hands 'flexing' at his sides (L9370-86), then stopped WITHOUT contact; 'almost closed around her throat' imports the separate Feb 4 attack's imagery. 'Started for her throat' 
  - − The same hands that had almost closed around Eleanor's throat six hours ago.
  - + The same hands that had started for Eleanor's throat six hours ago.

**`spec_prose_v1-4`** · prose · Ch 30 · L9728 — 'I sit in the chair by the window' is Josh's intentional vigil refrain (Ch 25 L8057, Ch 27 L9169) bracketing his reveal chapters. Reusing it verbatim in Eleanor's Ch 30 POV dilutes the motif and blurs the voices. Changin
  - − I sit in the chair by the window. Look out at Portland spreading below—buildings and bridges and the river cutting through like a vein.
  - + I take the chair by the window. Look out at Portland spreading below—buildings and bridges and the river cutting through like a vein.

**`range_E-13`** · plot-logic · Ch 30 · L9752 — Logic gap: Eleanor gives parents as emergency contact and thinks 'Haven't called them yet' (L9716-18), yet her mother arrives already knowing about the investigation and cancer with no bridge. The forced, canon-supported
  - − "Eleanor." She crosses to me, kneels by the chair. Takes my hands. "Why didn't you tell us? About any of this?"
  - + "Eleanor." She crosses to me, kneels by the chair. Takes my hands. "The hospice called us—you'd listed us as your emergency contact. Why didn't you tell us yourself? About any of this?"

**`range_E-11`** · appearance · Ch Epilogue Part Two · L10358 — Detail transplant: Sarah's 'small scar above left eyebrow' is Eleanor's exact established mark (L4821); Sarah has no other physical description (L844, L1928), so a reader could over-read a resemblance motif. Replacing wi
  - − **Sarah Martinez.** 34. Single mother. Disappeared October 2019. Dark hair. Small scar above left eyebrow. She coached her daughter's soccer team.
  - + **Sarah Martinez.** 34. Single mother. Disappeared October 2019. Dark hair. Maria has her smile now. She coached her daughter's soccer team.

---

## Part C — Confirmed but intentionally left unchanged (SKIP, 6)

- **`range_A-16`** (Ch 9 (setup gap in Ch 1-8), L2445): LOW seam: Josh's hidden gate camera is first used L2445 ('I'd hidden') with no plant in Ch1-8 (gear at L33 is DSLR/lenses/podcast only). Verifier rates LOW because the retrospective phrasing covers it. The proper fix (a gear plant at L33 or Ch5) is OUTSIDE this Ch8-10 region; the
- **`spec_setup-payoff-1`** (Ch 14 (payoff gap in Ch 25-28), L4632): The proposed fix (a post-reveal Eleanor dosing confession) would REINTRODUCE the canon violation this pass removes — she never drugged him (fugue + chemo). Verifier concurs L4632 is a false cheat-line, so nothing to reconcile. spec_canon-1's reframe makes drugging Josh's inferenc
- **`range_E-8`** (Ch 27, L8969): Merged into spec_retro-5 per the no-overlapping-before_text rule (both target the single L8969 sentence). That rewrite drops the standalone May 2024 episode and reframes it as the long-standing dormant fixation, resolving this dormancy contradiction (L644/L15) too. No separate ed
- **`range_D2-8`** (Ch 27, L9059): Defensible as written. The line is interrupted — 'I'd never been to Thornewood before—' is cut off by Eleanor's 'You have.' Josh means 'before [2020]', claiming 2020 was his first visit; she reveals he was here earlier (1998, as a toddler). This phrasing is the runway for the 199
- **`spec_retro-9`** (Ch 33/Epilogue (vs Ch 11), L10153): David-as-runner is LOCKED CANON ('training for marathon,' CHAPTER_MAP L195; epilogue L10368), so L10368 can't change. 'Last text...before his run' (L10153) is CONSISTENT with it; removing 'run' would create a NEW conflict with the marathon canon. Tension with his overnight-bedroo
- **`range_E-12`** (Ch 33, L10185): The Apr3->Jun15 gap is already implicitly covered: Ch 31 puts Josh in the eval wing '23 hours a day' behind reinforced glass, lawyer/psychiatrist only, no news access (L9815). The verifier's fix (Brennan withheld it) adds characterization plus an ethics problem (counsel hiding a 
