#!/usr/bin/env bash
# Checks every skill against the Agent Skills spec (https://agentskills.io)
# and this library's own rules. Run from the repo root: ./validate-skills.sh

SKILLS_DIR="${SKILLS_DIR:-skills}"
ERRORS=0
PASSED=0

fail() { echo "  ✗ $1"; ((ERRORS++)); bad=1; }

for dir in "$SKILLS_DIR"/*/; do
  name=$(basename "$dir")
  file="$dir/SKILL.md"
  bad=0
  echo "$name"

  [[ -f "$file" ]] || { fail "missing SKILL.md"; continue; }
  [[ -f "$dir/README.md" ]] || fail "missing README.md"

  [[ "$(head -1 "$file")" == "---" ]] || fail "front matter must start on line 1"
  front=$(awk 'NR==1{next} /^---$/{exit} {print}' "$file")

  fm_name=$(echo "$front" | sed -n 's/^name: *//p')
  desc=$(echo "$front" | sed -n 's/^description: *//p')

  [[ "$fm_name" == "$name" ]] || fail "name '$fm_name' must match folder '$name'"
  [[ "$name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ && ${#name} -le 64 ]] || fail "name must be lowercase letters, numbers, hyphens, max 64"
  [[ -n "$desc" ]] || fail "missing description"
  (( ${#desc} <= 1024 )) || fail "description is ${#desc} characters (max 1024)"
  [[ "$desc" == *"Use "* ]] || fail "description should say when to use it ('Use when...')"

  lines=$(wc -l < "$file")
  (( lines <= 500 )) || fail "SKILL.md is $lines lines (keep under 500)"

  if [[ "$name" != "money-ops-context" ]]; then
    grep -q "money-ops-context.md" "$file" || fail "missing the 'Before you start' context check"
  fi
  grep -q "^## Related skills" "$file" || fail "missing a Related skills section"

  # Every related skill must exist
  while read -r rel; do
    [[ -d "$SKILLS_DIR/$rel" ]] || fail "related skill '$rel' doesn't exist"
  done < <(awk '/^## Related skills/{on=1;next} /^## /{on=0} on' "$file" | sed -n 's/^- \*\*\([a-z0-9-]*\)\*\*.*/\1/p')

  (( bad )) || { echo "  ✓ ok"; ((PASSED++)); }
done

echo
echo "$PASSED passed, $ERRORS problems"
(( ERRORS == 0 ))
