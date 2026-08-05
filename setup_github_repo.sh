#!/usr/bin/env bash
# Run this from inside the extracted repo folder (where this script lives).
# Requires: git, GitHub CLI (`gh`) authenticated as your account (`gh auth login`).
set -euo pipefail

REPO_NAME="ai-automation-discovery-engine"
DESCRIPTION="Enterprise-grade Claude Skill for AI Automation Discovery."

# 1. Init git and create the GitHub repo (public, MIT license already in tree)
git init -b main
gh repo create "$REPO_NAME" \
  --public \
  --description "$DESCRIPTION" \
  --source=. \
  --remote=origin

# 2. Commit in logical, meaningful stages
git add LICENSE .gitignore
git commit -m "chore: initialize repo with MIT license and .gitignore"

git add skill/SKILL.md skill/references
git commit -m "feat: add core Skill instructions and reference documentation"

git add skill/ai-automation-discovery-engine.skill
git commit -m "build: add packaged .skill artifact for direct install"

git add README.md
git commit -m "docs: add project README with overview, usage, and philosophy"

git push -u origin main

# 3. Tag and create the v1.0.0 release with the .skill file attached
git tag -a v1.0.0 -m "v1.0.0 — initial public release"
git push origin v1.0.0

gh release create v1.0.0 \
  skill/ai-automation-discovery-engine.skill \
  --title "v1.0.0 — Initial Release" \
  --notes "First public release of the AI Automation Discovery Engine Skill: core SKILL.md, full reference documentation set, and a packaged .skill file ready for direct install."

echo "Done. Repo URL:"
gh repo view --web --json url -q .url 2>/dev/null || gh repo view --json url -q .url
