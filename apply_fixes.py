"""Apply text fixes to manuscript. Called by ralph-chapter-loop.ps1"""
import json
import sys

if len(sys.argv) < 2:
    print("Usage: python apply_fixes.py <fix_file.json>")
    sys.exit(1)

fix_file = sys.argv[1]

with open(fix_file, 'r', encoding='utf-8') as f:
    data = json.load(f)

with open(data['manuscript'], 'r', encoding='utf-8') as f:
    content = f.read()

applied = 0
for fix in data['fixes']:
    if fix['old'] in content:
        content = content.replace(fix['old'], fix['new'], 1)
        applied += 1

with open(data['manuscript'], 'w', encoding='utf-8') as f:
    f.write(content)

print(str(applied) + '/' + str(len(data['fixes'])))
