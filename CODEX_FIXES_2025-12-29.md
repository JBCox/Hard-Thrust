# Codex-Identified Issues - Fixes Applied

**Date:** December 29, 2025
**Source:** External Codex audit flagged potential issues
**Resolution:** Claude Code verified and fixed all confirmed errors

---

## CONFIRMED ERRORS FIXED (7 total)

### 1. Lily's Hair Color Inconsistency
**Problem:** Lily was described as "dark-haired" in early references but "blonde" in the reveal scenes.
**Lines Changed:** 1991, 6354, 6611
**Fix:** Changed all "dark-haired/dark hair" references to "blonde" to match the reveal descriptions (lines 8512, 8799).

### 2. February Dates in December Scene
**Problem:** Chapter 19 (December 26-27) showed Josh reviewing surveillance footage with gaps dated "February 1st/8th/12th" — impossible since Josh arrived in October and it's only December.
**Line Changed:** 6266
**Fix:** Changed "February 1st... February 8th... February 12th" to "December 1st... December 8th... December 12th"

### 3. Epilogue Timeline vs Plea Scene
**Problem:** Chapter 33 dates the guilty plea to April 8, but the epilogue was dated March 20, 2025 with "he pled guilty yesterday" — chronologically impossible. Eleanor also dies April 3, so she can't narrate after that date.
**Lines Changed:** 10304, 10308, 10323
**Fix:**
- Changed epilogue date from "March 20, 2025" to "March 29, 2025" (which IS a Saturday, and 5 days before Eleanor's April 3 death)
- Kept "Late March" description (matching "March air" at line 10341)
- Changed "He pled guilty yesterday" to "He's been arrested. Six victims confirmed." (plea hasn't happened yet in March; line 10361 correctly says "awaiting trial")

### 4. March 20, 2025 Day-of-Week Error
**Problem:** Original epilogue stated March 20, 2025 was a Saturday — it's actually a Thursday.
**Resolution:** Fixed by changing epilogue date to March 29, 2025 (which IS a Saturday, and before Eleanor's April 3 death).

### 5. Handgun vs Rifle Inconsistency
**Problem:** Line 4199 describes Josh finding "a handgun. Smith & Wesson 9mm" in Eleanor's trunk, but line 5577 has Josh say "Keep the rifle if it makes you feel safer." No rifle was ever introduced.
**Line Changed:** 5577
**Fix:** Changed "Keep the rifle" to "Keep the gun"

### 6. "No Signal" Phone Logic Error
**Problem:** Line 1380 said Josh couldn't take photos because there was "no signal" — but phone cameras work without cellular signal.
**Line Changed:** 1380
**Fix:** Changed "I pulled out my phone to take photos, but there was no signal this deep in the woods. I photographed the scene mentally instead." to "I pulled out my phone and took photos. Documented everything."

### 7. "He Said He Loves Me" Timing Mismatch
**Problem:** Eleanor's November 9 journal entry (line 2360) claimed "He said he loves me" but Josh doesn't actually say "I love you" on-page until December 10 (line 3802).
**Line Changed:** 2360
**Fix:** Changed "He said he loves me. Held me like I was worth keeping." to "He held me like I was worth keeping. Like I was something precious."

---

## LOOSE ENDS ADDRESSED (2 total)

### 8. Bootprints Orphaned Reference
**Problem:** Line 2135 referenced "bootprints outside the window" as evidence Josh found, but no scene showed him discovering bootprints.
**Line Changed:** 2135
**Fix:** Changed bootprints reference to the abandoned campsite (which WAS established in lines 1374-1384): "The abandoned campsite with the wallet and keys left behind—someone had disappeared from these woods."

### 9. Steamer Trunk Dangling Setup
**Problem:** Line 636 introduced a locked steamer trunk with "Interesting" — creating reader expectation that was never fulfilled.
**Lines Changed:** 636-640
**Fix:** Removed the "Interesting" beat and the investigation intent. Changed to atmospheric detail: "A steamer trunk pushed against one wall, probably full of more forgotten belongings from whoever had lived here before."

---

## FALSE ALARMS (Not Changed)

### Eleanor's Background Check "Inconsistency"
**Verdict:** NOT an error.
**Explanation:** First check (line 1354) found "limited digital footprint" with a 2019 driver's license. Second check (line 3063) used a different service and found her to be a "ghost." This is explainable as different databases returning different results, or the first ID being forged. Could also reflect Josh's unreliable investigation.

### Abandoned Campsite Resolution
**Verdict:** Intentional ambiguity.
**Explanation:** The campsite (lines 1374-1384) is referenced later with Josh speculating it was David Park's (line 3137), but never confirmed. This appears to be deliberate mystery/atmosphere, not an oversight.

### POV Switching Within Chapters
**Verdict:** Stylistic choice.
**Explanation:** Chapter 12 uses `**Josh**` and `**Eleanor**` headers within one dated chapter. Unconventional but internally consistent.

### "Sarah" Texting Eleanor
**Verdict:** Not an error.
**Explanation:** Sarah who texts Eleanor (line 6029) is a different person than victim Sarah Martinez. Same first name is realistic.

### 24-Hour Time Format
**Verdict:** Very minor.
**Explanation:** Line 4556 uses "13:15" amid mostly AM/PM format. Not changed — extremely minor.

---

## SECOND CODEX PASS (Same Day)

### 10. "Sixteen Hours" Time Math Error
**Problem:** Eleanor leaves at 6 AM (line 2435), returns at 6:15 PM (line 2471) = 12 hours 15 min. But lines 2439 and 2479 said "sixteen hours."
**Lines Changed:** 2439, 2479
**Fix:** Changed "Sixteen hours" / "sixteen hours" to "Twelve hours" / "twelve hours"

### 11. "Six Weeks" Evaluation Timeline Error
**Problem:** Line 10083 said "Four psychiatrists evaluated me over six weeks" but arrest is March 15 and plea is April 8 — only 24 days (~3.5 weeks).
**Line Changed:** 10083
**Fix:** Changed "six weeks" to "three weeks"

### 12. Chapter 9 Date Range Clarity
**Problem:** Chapter 9 header said "November 9" but contained a "**Thursday morning**" scene (Nov 14). The chapter spans 5 days without indicating it.
**Line Changed:** 2379
**Fix:** Changed "November 9 — Josh" to "November 9-14 — Josh"

### Not Changed (Author Decision)
- **Content note "terminal illness"** — Standard trigger warning; author call on spoiler vs. safety
- **"Dissociation" in Ch 19** — Josh researching symptoms; word buried among many conditions
- **"Three weeks after arrest"** — 19 days is close enough for dialogue; left as-is

---

## SUMMARY

| Category | Count | Status |
|----------|-------|--------|
| Confirmed errors fixed | 10 | COMPLETE |
| Loose ends addressed | 2 | COMPLETE |
| False alarms / author calls | 8 | No action needed |

**All manuscript fixes applied to:** `FULL_MANUSCRIPT.txt`

---

**Audit/Fix Completed:** December 29, 2025
**Tools Used:** Manual verification + targeted edits
