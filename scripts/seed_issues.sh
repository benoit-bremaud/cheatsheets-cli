#!/usr/bin/env bash
set -euo pipefail
OWNER=${1:?owner}; REPO=${2:?repo}; TSV=${3:?tsv}

# TSV header: title<TAB>body<TAB>labels<TAB>milestone
# labels are separated by ';'

# Skip header
tail -n +2 "$TSV" | while IFS=$'\t' read -r title body labels ms_title; do
  # Build args
  args=(--repo "$OWNER/$REPO" --title "$title" --body "$body")
  if [[ -n "${labels:-}" ]]; then
    IFS=';' read -r -a arr <<< "$labels"
    for l in "${arr[@]}"; do args+=(--label "$l"); done
  fi
  if [[ -n "${ms_title:-}" ]]; then
    args+=(--milestone "$ms_title")
  fi

  gh issue create "${args[@]}"
  echo "+ issue: $title  [milestone: ${ms_title:-none}]"
done
