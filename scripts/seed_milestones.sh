#!/usr/bin/env bash
set -euo pipefail
OWNER=${1:?owner}; REPO=${2:?repo}
create_ms() { gh api --method POST -H "Accept: application/vnd.github+json" "/repos/$OWNER/$REPO/milestones" -f title="$1" -f state=open >/dev/null || true; }
create_ms "v0.1 Bootstrap & System"
create_ms "v0.2 Dev & Frontend"
create_ms "v0.3 DevOps"
create_ms "v0.4 Databases & Cloud"
create_ms "v0.5 OS & Bonus"
create_ms "v0.6 Polish & Automation"
