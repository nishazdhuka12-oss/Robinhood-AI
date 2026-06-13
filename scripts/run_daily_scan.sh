#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_DIR="$ROOT_DIR/logs"
PROMPT="$ROOT_DIR/prompts/daily_scan.md"
STAMP="$(date +%Y%m%d-%H%M%S)"

mkdir -p "$LOG_DIR"

if ! command -v codex >/dev/null 2>&1; then
  echo "codex CLI not found on PATH" >&2
  exit 127
fi

codex exec \
  --cd "$ROOT_DIR" \
  --skip-git-repo-check \
  "$(cat "$PROMPT")" | tee "$LOG_DIR/daily-scan-$STAMP.log"
