#!/usr/bin/env bash
set -e
gh auth status >/dev/null 2>&1 || { echo "Run: gh auth login"; exit 1; }
repo=$(gh repo view --json nameWithOwner -q .nameWithOwner)
ts=$(date +%s)
issue=$(gh issue create --title "Quickdraw-$ts" --body "Automated issue")
gh issue close "$issue"
echo "🏅 Quickdraw unlocked"
echo "🔗 https://github.com/$repo"
