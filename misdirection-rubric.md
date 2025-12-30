# Misdirection Rubric - Hard Thrust

## Purpose
This rubric defines how to score each chapter for misdirection balance. The goal is to ensure:
- **Eleanor looks like the killer** planning to murder Josh
- **Josh looks like the innocent victim** being targeted
- The true twists remain hidden until Chapter 26-27

---

## Scoring Methodology

For each chapter, count occurrences of signals in each category. A signal counts once per distinct instance (not per word).

---

## Eleanor Killer-Signals (Target: 3+ per chapter)

### E1: Secretive Behavior
**Pattern:** Eleanor hides things, locks doors, refuses to explain, acts evasive

**Examples to search for:**
- Locked rooms/doors she controls
- Hidden documents, photos, files
- Refuses to answer questions
- Changes subject when asked about past
- Has areas Josh can't access
- Destroys or hides evidence

**Grep patterns:**
```
lock|secret|hide|hidden|private|refuse|evas|won't say|can't tell|none of your
```

### E2: Surveillance/Stalking
**Pattern:** Eleanor watches Josh, follows him, appears unexpectedly

**Examples to search for:**
- Observing Josh without his knowledge
- Appearing in unexpected places
- Knowing where he's been
- Following him around estate
- Watching from windows/shadows

**Grep patterns:**
```
watch|observ|follow|appear|there she was|eyes on|gaze|stare|shadow
```

### E3: Probing Questions
**Pattern:** Eleanor asks pointed questions about Josh's past, victims, crimes

**Examples to search for:**
- Asking about specific victims
- Questions about his podcast cases
- Probing his memory/blackouts
- Testing his knowledge of crimes
- Pressing for details about his history

**Grep patterns:**
```
ask|question|what about|do you remember|tell me about|curious|why did you
```

### E4: Unexplained Knowledge
**Pattern:** Eleanor knows things she shouldn't, has details only the killer/investigator would have

**Examples to search for:**
- Knows victim names without explanation
- Has crime scene details
- Understands forensic details
- References events she wasn't part of
- Slips with information

**Grep patterns:**
```
how do you know|where did you hear|you knew|somehow knew|already knew
```

### E5: Environmental Control
**Pattern:** Eleanor controls Josh's environment - pills, food, isolation, access

**Examples to search for:**
- Gives Josh pills (any pills)
- Controls food/drink preparation
- Manages his schedule
- Limits his communication with outside
- Controls estate access points

**Grep patterns:**
```
pill|medicine|medication|food|drink|coffee|tea|phone|signal|road|snowed
```

### E6: Manipulation
**Pattern:** Eleanor manipulates situations to keep Josh at estate, prevent his escape

**Examples to search for:**
- Convinces Josh to stay
- Creates reasons he can't leave
- Distracts from escape opportunities
- Uses emotional manipulation
- Leverages his attraction to her

**Grep patterns:**
```
stay|don't leave|wait|need you|can't go|roads closed|storm|just one more
```

### E7: Obsessive Focus (Eleanor POV chapters only)
**Pattern:** In her POV, Eleanor thinks obsessively about Josh, plans related to him

**Examples to search for:**
- Constant thoughts about Josh
- Planning next interaction
- Analyzing his behavior
- Strategic thinking about him
- Emotional intensity directed at him

**Grep patterns:**
```
Josh|he|him|plan|next|must|have to|need to|can't let him
```

---

## Josh Victim-Signals (Target: 2+ per chapter)

### J1: Paranoia/Watched
**Pattern:** Josh feels watched, unsafe, paranoid - legitimate victim fear

**Examples to search for:**
- Sensing someone watching
- Feeling unsafe
- Checking behind him
- Locking doors
- Startled by sounds/movements

**Grep patterns:**
```
watch|eyes|feeling|sense|unsafe|danger|something wrong|paranoi|uneasy
```

### J2: Blackout Terror
**Pattern:** Josh's blackouts scare HIM - he's a victim of his own condition

**Examples to search for:**
- Waking confused
- Lost time frightens him
- Doesn't understand what happened
- Fears his own mind
- Seeks explanations desperately

**Grep patterns:**
```
blackout|lost time|don't remember|what happened|gap|missing|woke up|confusion
```

### J3: Trapped
**Pattern:** Josh is physically or emotionally trapped at Thornewood

**Examples to search for:**
- Can't leave due to weather
- Roads impassable
- No cell signal
- No transportation
- Psychological need to stay

**Grep patterns:**
```
trapped|stuck|can't leave|snowed in|no way out|roads|signal|escape
```

### J4: Disturbing Discoveries
**Pattern:** Josh finds disturbing things but doesn't understand their significance

**Examples to search for:**
- Finds evidence he can't interpret
- Discovers suspicious items
- Sees things that don't make sense
- Encounters clues pointing at Eleanor
- Confusion about what he's found

**Grep patterns:**
```
found|discover|what is this|strange|disturb|confus|doesn't make sense
```

### J5: Vulnerable Attraction
**Pattern:** Josh is attracted to Eleanor despite sensing danger - vulnerability

**Examples to search for:**
- Physical attraction to Eleanor
- Emotional connection forming
- Trust building despite warning signs
- Desire overriding caution
- Letting guard down

**Grep patterns:**
```
attract|drawn to|beautiful|wanted|desire|trust|closer|touch|kiss
```

### J6: Investigates Eleanor
**Pattern:** Josh actively investigates Eleanor's suspicious behavior

**Examples to search for:**
- Searches her things
- Follows her
- Questions her stories
- Looks for evidence about her
- Treats her as suspect

**Grep patterns:**
```
search|look for|follow|investigate|suspic|who is she|what is she hiding
```

### J7: Safety Fears
**Pattern:** Josh explicitly fears for his safety, life

**Examples to search for:**
- Fears Eleanor will harm him
- Worries about being killed
- Makes escape plans
- Prepares defenses
- Explicit fear of death

**Grep patterns:**
```
kill me|hurt me|danger|safe|afraid|fear|escape|get out|survive
```

---

## Danger Signals to Flag (Should NOT appear before Ch 26)

### Josh Guilty-Signals (Flag if present)

**G1: Crime Memories**
Josh remembers committing crimes, violence, or being Marcus Webb
- Any memory of attacking someone
- Recognition as Marcus
- Hands covered in blood
- Hiding evidence

**G2: Victim Connection**
Direct connection between Josh and victims established
- Josh knew victim before death
- Josh was in victim's location
- Timeline places Josh at crime scene

**G3: External Accusation**
Someone accuses or suspects Josh of being the killer
- Character says Josh did it
- Evidence points explicitly at Josh
- Police/detective suspects Josh

**G4: Marcus Webb Link**
Any connection drawn between Josh and Marcus Webb identity
- Name "Marcus Webb" near Josh
- Description matching Josh
- Witness identifying Josh as Marcus

### Eleanor Innocent-Signals (Flag if too prominent)

**I1: Revealed Motive**
Eleanor's true reason for being at Thornewood is explained
- She's Lily's sister
- She's investigating Josh
- She wants justice not revenge

**I2: Illness Visible**
Eleanor's terminal illness is made explicit
- Cancer mentioned
- Dying mentioned
- Pills explained as medication
- Symptoms explicitly described

**I3: Heroic Framing**
Eleanor framed as hero rather than threat
- Sympathetic backstory too early
- Righteous mission revealed
- Reader roots for her against Josh

---

## Chapter Scoring Sheet Template

```markdown
## Chapter [N] - [POV Character]

### Eleanor Killer-Signals
- [ ] E1: Secretive Behavior - Count: __
- [ ] E2: Surveillance/Stalking - Count: __
- [ ] E3: Probing Questions - Count: __
- [ ] E4: Unexplained Knowledge - Count: __
- [ ] E5: Environmental Control - Count: __
- [ ] E6: Manipulation - Count: __
- [ ] E7: Obsessive Focus - Count: __
**TOTAL: __ (Target: 3+)**

### Josh Victim-Signals
- [ ] J1: Paranoia/Watched - Count: __
- [ ] J2: Blackout Terror - Count: __
- [ ] J3: Trapped - Count: __
- [ ] J4: Disturbing Discoveries - Count: __
- [ ] J5: Vulnerable Attraction - Count: __
- [ ] J6: Investigates Eleanor - Count: __
- [ ] J7: Safety Fears - Count: __
**TOTAL: __ (Target: 2+)**

### Danger Signals (Flag if present)
- [ ] G1: Crime Memories - FLAGGED: __
- [ ] G2: Victim Connection - FLAGGED: __
- [ ] G3: External Accusation - FLAGGED: __
- [ ] G4: Marcus Webb Link - FLAGGED: __
- [ ] I1: Revealed Motive - FLAGGED: __
- [ ] I2: Illness Visible - FLAGGED: __
- [ ] I3: Heroic Framing - FLAGGED: __

### Chapter Status
- [ ] PASS: Eleanor signals >= 3, Josh victim signals >= 2, No danger flags
- [ ] FLAG: Balance issues or danger signals present
```

---

## Scoring Thresholds

| Status | Criteria |
|--------|----------|
| **PASS** | Eleanor >= 3, Josh victim >= 2, No danger flags |
| **WEAK** | Eleanor 1-2 OR Josh victim 0-1, No danger flags |
| **FLAG** | Any danger signal present |
| **CRITICAL** | G3 or G4 present (direct accusation or Marcus link) |

---

## Per-Act Expectations

### Act 1 (Ch 1-11): Setup
- Eleanor killer-signals should build gradually
- Josh victim-signals should establish fear
- NO danger signals allowed

### Act 2 (Ch 12-22): Escalation
- Eleanor killer-signals at peak intensity
- Josh victim-signals should include investigation
- Tension between attraction and fear
- NO danger signals allowed

### Act 3 (Ch 23-25): Pre-Reveal
- Maximum misdirection
- Reader should be CERTAIN Eleanor is the killer
- Josh should be planning escape/defense
- NO danger signals until Ch 26

### Reveal (Ch 26-27)
- Danger signals NOW ALLOWED
- All twists revealed
- Truth about Josh emerges
- Eleanor reframed as hero

---

## Quick Reference Cheat Sheet

**Eleanor should seem:** Secretive, watching, controlling, dangerous, obsessed
**Josh should seem:** Scared, confused, trapped, attracted, investigating HER
**Reader should feel:** Fear FOR Josh, suspicion OF Eleanor
**Hidden until reveal:** Josh is killer, Eleanor is dying hero
