# Kindle Create Workflow for Hard Thrust

This guide walks you through formatting your manuscript for Amazon KDP using Kindle Create (free).

---

## Step 1: Download Kindle Create

Download from: https://www.amazon.com/Kindle-Create/b?node=18292298011

Available for Windows and Mac. Free.

---

## Step 2: Import Your Manuscript

1. Open Kindle Create
2. Click **"Create New"**
3. Select **"Novel"** (Reflowable - text can resize)
4. Choose your manuscript file: `FULL_MANUSCRIPT.txt`
5. Kindle Create will auto-detect chapters

**What happens:** Kindle Create recognizes lines starting with `# CHAPTER` and creates chapter breaks automatically.

---

## Step 3: Review Chapter Detection

Kindle Create should find:
- 33 Chapters (Chapter 1-33)
- 1 Epilogue (with 3 parts)

**Check the Table of Contents** in the left panel. Make sure all chapters appear.

If any are missing, you can manually add chapter starts by:
1. Selecting the chapter heading text
2. Right-click → "Set as Chapter Start"

---

## Step 4: Add Front Matter

In Kindle Create, add pages BEFORE Chapter 1:

1. Click **"Insert" → "Front Matter"**
2. Add these pages in order:
   - **Title Page** (Kindle Create has a template)
   - **Copyright Page** (use text from FRONT_MATTER.md)
   - **Dedication** (optional)
   - **Content Warning** (recommended - use text from FRONT_MATTER.md)

**Text to paste for Copyright:**
```
This is a work of fiction. Names, characters, places, and incidents either are the product of the author's imagination or are used fictitiously. Any resemblance to actual persons, living or dead, events, or locales is entirely coincidental.

Copyright © 2026 by Joshua Cox

All rights reserved. No part of this book may be reproduced in any form or by any electronic or mechanical means, including information storage and retrieval systems, without written permission from the author, except for the use of brief quotations in a book review.

First Edition
```

**Text to paste for Content Warning:**
```
CONTENT NOTE

This novel contains explicit sexual content, violence, psychological trauma, serious illness, and themes of grief, memory loss, and moral ambiguity.

Reader discretion advised.
```

---

## Step 5: Add Back Matter

After the Epilogue, add pages:

1. Click **"Insert" → "Back Matter"**
2. Add these pages:
   - **About the Author** (use text from BACK_MATTER.md)
   - **A Note from the Author** (review request - from BACK_MATTER.md)

**About the Author template:**
```
ABOUT THE AUTHOR

Joshua Cox writes dark romance and psychological thrillers that explore the space between love and obsession. When he's not crafting morally gray characters and devastating plot twists, he [hobby/location].

Hard Thrust is his debut novel.
```

**Review Request:**
```
A NOTE FROM THE AUTHOR

Thank you for reading Hard Thrust. If you enjoyed this book, please consider leaving a review on Amazon. Reviews help other readers discover new books and mean the world to independent authors.

Even a sentence or two makes a difference.

Thank you for your support.

—Joshua
```

---

## Step 6: Choose a Theme

Kindle Create offers formatting themes:

1. Click **"Theme"** in the top menu
2. Preview different options
3. **Recommended for dark romance/thriller:**
   - "Modern" (clean, minimal)
   - "Classic" (traditional novel look)

The theme controls:
- Chapter heading style
- First paragraph styling (drop caps, etc.)
- Font choices

---

## Step 7: Preview

1. Click **"Preview"** to see how it looks on devices
2. Check on: Kindle, Tablet, Phone
3. Look for:
   - Chapter breaks working correctly
   - Scene breaks (---) displaying properly
   - No weird formatting issues

---

## Step 8: Export

### For eBook:
1. Click **"Export"** → **"Export as KPF"**
2. This creates a `.kpf` file for uploading to KDP
3. Save as: `HardThrust_eBook.kpf`

### For Print (Paperback/Hardcover):
1. In Kindle Create, go to **File → Export for Print**
2. This creates a print-ready PDF
3. Save as: `HardThrust_Print.pdf`

**Note:** For print, you may need to adjust:
- Margins (Kindle Create uses defaults, check against KDP requirements)
- Trim size (set to 6" x 9")

---

## Step 9: Upload to KDP

1. Go to kdp.amazon.com
2. Create a new title
3. Upload your files:
   - **eBook:** Upload `HardThrust_eBook.kpf`
   - **Paperback:** Upload `HardThrust_Print.pdf`
   - **Hardcover:** Upload same PDF (cover is separate)

---

## Troubleshooting

**Scene breaks not showing:**
- The `---` markers should convert to centered `* * *` or blank space
- If not, search and replace `---` with `* * *` before importing

**Double spacing issues:**
- Kindle Create handles paragraph spacing automatically
- If paragraphs look too spaced, it's usually fine on actual Kindle

**Chapter headings look wrong:**
- Try a different Theme
- Or manually style chapter headings in Kindle Create

**Epilogue not detected:**
- May need to manually set "# EPILOGUE" as a chapter start

---

## Files You Have

| File | Purpose |
|------|---------|
| `FULL_MANUSCRIPT.txt` | Main manuscript (import this) |
| `FRONT_MATTER.md` | Text for front matter pages |
| `BACK_MATTER.md` | Text for back matter pages |
| `BOOK_DESCRIPTION.md` | Amazon listing copy |
| `PUBLICATION_CHECKLIST.md` | Master tracking document |

---

## Quick Reference: KDP Upload Checklist

- [ ] eBook .kpf file ready
- [ ] Print interior PDF ready
- [ ] eBook cover (2560 x 1600 px JPEG)
- [ ] Print cover PDF (use KDP cover calculator for dimensions)
- [ ] Book description (from BOOK_DESCRIPTION.md)
- [ ] 7 keywords
- [ ] 2-3 categories selected
- [ ] Pricing set

---

*Last Updated: 2026-01-17*
