#!/usr/bin/env bash
# Copy the generated scorecard page and badges from the Project-Apollo checkout into this site.
# Usage: ./sync.sh [PATH_TO_PROJECT_APOLLO]   (default: ../Apollo)
set -euo pipefail
SRC="${1:-$(dirname "$0")/../Apollo}/data/scorecard"
[ -f "$SRC/scorecard.html" ] || { echo "no scorecard.html under $SRC" >&2; exit 1; }
cp "$SRC/scorecard.html" scorecard.html
rm -rf badges && cp -r "$SRC/badges" badges
if grep -rqE "/home/|@gmail\.com" scorecard.html badges; then echo "refusing: a home path or an email address in the copied files" >&2; exit 1; fi
echo "synced scorecard.html and $(ls badges/*.svg | wc -l) badges from $SRC"
