#!/bin/bash
# validate-bash.sh — PreToolUse hook for bash tool
# Blocks dbt commands that target production.
INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

if echo "$COMMAND" | grep -q 'dbt.*--target prod'; then
  echo "Blocked: direct production dbt runs are not allowed. Use the CI/CD pipeline instead." >&2
  exit 2
fi
