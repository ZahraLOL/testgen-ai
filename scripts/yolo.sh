#!/usr/bin/env bash
set -e
ts=$(date +%s)
branch="yolo-$ts"
git checkout -b "$branch"
echo "$ts" >> YOLO.md
git add .
git commit -m "YOLO automation"
git push -u origin "$branch"
gh pr create --title "YOLO $ts" --body "Automated PR"
gh pr merge --auto --squash
echo "🚀 YOLO completed"
