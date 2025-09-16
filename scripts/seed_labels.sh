#!/usr/bin/env bash
set -euo pipefail
OWNER=${1:?owner}; REPO=${2:?repo}
label() { gh label create "$1" --description "$2" --color "$3" --repo "$OWNER/$REPO" 2>/dev/null || gh label edit "$1" --description "$2" --color "$3" --repo "$OWNER/$REPO"; }
label "feat"        "New feature"              "1f883d"
label "fix"         "Bug fix"                   "d73a4a"
label "docs"        "Documentation"             "0e8a16"
label "chore"       "Chore / maintenance"       "cfd3d7"
label "refactor"    "Refactor"                  "d4c5f9"
label "test"        "Tests"                     "a2eeef"
label "ci"          "CI/CD"                     "7057ff"
label "infra"       "Infrastructure"            "5319e7"
label "priority:P0" "Highest priority"          "b60205"
label "priority:P1" "High priority"             "e99695"
label "priority:P2" "Normal priority"           "fbca04"
label "priority:P3" "Low priority"              "c2e0c6"
label "area:system"   "System domain"           "0366d6"
label "area:dev"      "Dev domain"              "0969da"
label "area:devops"   "DevOps domain"           "1f6feb"
label "area:cloud"    "Cloud domain"            "218bff"
label "area:db"       "Databases domain"        "54a3ff"
label "area:os"       "OS domain"               "8ed4ff"
