# Savvy Reader Spoiler Audit

## Purpose
Deploy parallel agents to hunt for spoilers that savvy readers might catch, organized by chapter ranges and twist protection priorities.

## When to Use
- After completing a draft with major twists/reveals
- When you suspect readers are "guessing the ending"
- Before sending to beta readers
- After making plot changes that might have introduced new tells

---

## Step 1: Define the Twists

Before running the audit, document:

### What Readers Should NOT Know (The Twists)
List each major twist/reveal in order:
```
1. [TWIST]: [Brief description]
2. [TWIST]: [Brief description]
...
```

### What Readers SHOULD Believe (The Misdirection)
For each twist, what's the intended false belief?
```
1. Readers should think: [false belief]
   Truth: [actual twist]
```

### Twist Timing
When does each twist reveal?
```
- Twist 1: Chapter X
- Twist 2: Chapter Y
...
```

---

## Step 2: Create Chapter Ranges

Divide manuscript into 4-6 ranges based on act structure:

| Range | Chapters | Act | Rules |
|-------|----------|-----|-------|
| Range 1 | Ch 1-X | Setup | NO hints allowed |
| Range 2 | Ch X-Y | Rising | Subtle hints OK if dismissed |
| Range 3 | Ch Y-Z | Climax | Tension max, reveals approaching |
| Range 4 | Ch Z-end | Resolution | Reveals happen, check they land |

---

## Step 3: Agent Prompt Template

Use this template for each agent, customizing the chapter range and rules:

```
You are a savvy thriller reader analyzing a manuscript for spoilers that telegraph twists too early.

**THE CORE TWISTS (readers should NOT figure out):**
[List all twists here]

**WHAT READERS SHOULD BELIEVE:**
[List intended false beliefs here]

**ANALYZE CHAPTERS [X-Y] from [MANUSCRIPT FILE] for:**

[For Act 1/Setup chapters:]
- NO hints of any twists allowed
- Check for: [twist-specific tells]
- Language that breaks intended reader perception

[For Act 2/Rising chapters:]
- Subtle hints OK if character dismisses them
- Escalating tension should point AWAY from truth
- Check for: [twist-specific tells getting too obvious]

[For Act 3/Resolution chapters:]
- Check reveals land with impact
- Look for retroactive spoilers (things that made earlier chapters too obvious)
- Verify evidence presentation is solid

**REPORT FORMAT:**
For each issue found:
- Line number and quote
- Severity: HIGH/MEDIUM/LOW
- Why it's a problem
- Suggested fix

Read chapters [X-Y] and report findings.
```

---

## Step 4: Twist-Specific Spoiler Categories

Create hunting categories for each twist type:

### Identity Twist (Character is secretly X)
- Language revealing true identity
- Knowledge character shouldn't have
- Reactions that reveal hidden relationship
- Names/terms used before reveal

### Unreliable Narrator (Character doesn't know truth about themselves)
- Memory gaps described too clinically
- Dissociation language before reveal
- Character articulating truth while "denying" it
- Physical evidence character ignores too conveniently

### Hidden Illness/Condition
- Specific symptoms before reveal
- Medical terminology before reveal
- Time pressure that sounds medical
- Medication described too clearly

### Secret Relationship (Character related to victim/other)
- Grief language that sounds familial
- Personal pronouns ("her" vs "the victim")
- Intimate knowledge of deceased
- Emotional reactions that exceed professional interest

### Investigation Pretending to be Predation (or vice versa)
- Clinical/professional language in "predator" POV
- Evidence/proof language before appropriate
- Goal language that reveals true purpose
- Certainty framed as knowledge vs obsession

---

## Step 5: Deploy Agents in Parallel

Run 4-6 agents simultaneously:

```
Agent 1: Chapters 1-X (Act 1) - ZERO tolerance for hints
Agent 2: Chapters X-Y (Act 2 early) - Watch for patterns forming
Agent 3: Chapters Y-Z (Act 2 late) - Maximum misdirection needed
Agent 4: Chapters Z-end (Act 3) - Check reveals land properly
```

**Key instruction for all agents:**
"Report SPECIFIC LINE NUMBERS and quotes for each potential spoiler, with severity rating (HIGH/MEDIUM/LOW) and suggested fix."

---

## Step 6: Compile and Prioritize

After agents return, organize findings:

### Priority 1: CRITICAL
- Will telegraph twist to attentive first-time readers
- Fix immediately

### Priority 2: HIGH
- Creates patterns that accumulate
- Individually passable, collectively damaging

### Priority 3: MEDIUM
- Might catch very savvy readers
- Fix if time permits

### Priority 4: LOW
- Adds to retroactive reread experience
- Usually keep these

---

## Step 7: Fix Patterns

Common fix patterns:

| Problem | Fix Pattern |
|---------|-------------|
| Character articulates truth while denying | Remove the articulation, strengthen denial |
| Clinical language for condition | Replace with vague emotional language |
| Personal pronouns for victim | Use "the victim" or name, not "her/him" |
| Specific symptoms | Generalize to "stress" or "exhaustion" |
| Time pressure sounds medical | Change to emotional urgency |
| Evidence language too early | Replace with hunting/obsession language |
| "Exactly wrong" author confirmation | Remove authorial judgment |
| Math problem (ages + dates) | Remove specific numbers |

---

## Step 8: Verify Structural Elements

After spoiler fixes, check:

- [ ] All reveals explicitly stated (not just implied)
- [ ] Evidence presentation is solid
- [ ] Character reactions authentic
- [ ] No plot holes created by fixes
- [ ] Retroactive reread still rewarding

---

## Example Agent Deployment

For a thriller with these twists:
1. Protagonist is the killer (fugue states)
2. Antagonist is victim's family member investigating
3. Antagonist has terminal illness

Deploy:
```
Agent 1 (Ch 1-8): "Hunt for any hints that protagonist has been here before, any dissociative language, any sisterly grief from antagonist, any medical symptoms beyond vague stress"

Agent 2 (Ch 9-16): "Same as above, plus watch for patterns accumulating. Protagonist's paranoia about antagonist should be building, not their self-awareness."

Agent 3 (Ch 17-24): "Maximum misdirection. Protagonist should fear antagonist, not themselves. Antagonist should read as dangerous predator, not grieving investigator."

Agent 4 (Ch 25-end): "Check reveals land with impact. Look for anything that made earlier chapters too obvious in hindsight."
```

---

## Quick Reference: Red Flag Language

### Always flag in early chapters:
- "remembering" instead of "imagining"
- "episode" + "getting worse"
- "subject" or "evidence" in predator POV
- Specific medical symptoms
- Personal pronouns for victims
- Character ages that allow date math
- "Exactly wrong" or similar author confirmation
- Internal voices identified as "mine"

### Context-dependent (check act):
- Déjà vu (OK in Act 2 if dismissed)
- Memory gaps (OK if blamed on external cause)
- Physical symptoms (OK if attributed to stress)
- Time pressure (OK if sounds emotional not medical)

---

*This methodology found 25+ spoilers in a 33-chapter manuscript that previous passes missed.*
