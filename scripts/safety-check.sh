#!/usr/bin/env bash
# Fails if a commit would publish personal data:
#   1. any file under output/ (other than its README/.gitkeep) is tracked or staged
#   2. any identifier from output/profile.md appears in a file outside output/
# Install as a pre-commit hook:  ln -sf ../../scripts/safety-check.sh .git/hooks/pre-commit
set -euo pipefail

root="$(git rev-parse --show-toplevel)"
cd "$root"
fail=0

# 1. output/ must stay out of git
tracked="$(git ls-files --cached -- output | grep -v -E '^output/(\.gitkeep|README\.md)$' || true)"
if [ -n "$tracked" ]; then
  echo "✗ These files in output/ are tracked or staged (run: git rm --cached <file>):"
  echo "$tracked" | sed 's/^/    /'
  fail=1
fi

# 2. No profile value may appear anywhere else in the repo
profile="output/profile.md"
if [ -f "$profile" ]; then
  # Low-risk labels that would match normal repo text (e.g. a state name)
  skip='^- (State of residence|Cities|Own sites/repos):'
  n=0
  while IFS= read -r value; do
    n=$((n + 1))
    value="$(echo "$value" | sed 's/^ *//; s/ *$//')"
    [ ${#value} -lt 4 ] && continue

    digits="$(echo "$value" | tr -cd '0-9')"
    if [ ${#digits} -ge 10 ]; then
      # Phone number: match with any separators, e.g. 555-123-4567 or (555) 123 4567
      d="${digits: -10}"
      pattern="${d:0:3}[^0-9]{0,2}${d:3:3}[^0-9]{0,2}${d:6:4}"
      hits="$(git ls-files -z --cached --others --exclude-standard -- . ':(exclude)output' \
        | xargs -0 grep -l -E -e "$pattern" 2>/dev/null || true)"
    else
      hits="$(git ls-files -z --cached --others --exclude-standard -- . ':(exclude)output' \
        | xargs -0 grep -l -i -F -e "$value" 2>/dev/null || true)"
    fi

    if [ -n "$hits" ]; then
      # Don't print the value itself; the terminal may be shared or recorded
      echo "✗ Profile value #$n appears in:"
      echo "$hits" | sed 's/^/    /'
      fail=1
    fi
  done < <(grep -E '^- [^:]+:' "$profile" | grep -v -E "$skip" | sed 's/^- [^:]*: *//' | tr ';' '\n')
fi

if [ "$fail" -ne 0 ]; then
  echo "Commit blocked: personal data would be published."
  exit 1
fi
echo "✓ Safety check passed: no personal data outside output/."
