#!/usr/bin/env bash
set -euo pipefail

# Purpose: bootstrap the cheatsheets directory tree with placeholder README.md files
# Usage: ./scripts/scaffold.sh

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"
cd "$ROOT_DIR"

mkdir -p _templates scripts

create_if_missing() {
  local path="$1"; shift || true
  if [[ ! -e "$path" ]]; then
    mkdir -p "$(dirname "$path")"
    printf '%s\n' "$*" >"$path"
    echo "+ created $path"
  else
    echo "= exists  $path"
  fi
}

# Root files
create_if_missing "README.md" "# CLI Cheatsheets" "" "See _templates for sheet template."
create_if_missing ".editorconfig" \
"root = true" "" "[*]" "charset = utf-8" "end_of_line = lf" "insert_final_newline = true" \
"indent_style = space" "indent_size = 2" "trim_trailing_whitespace = true"
create_if_missing ".gitignore" \
"node_modules/" ".venv/" "__pycache__/" "*.log" "dist/" "build/" ".cache/" ".tmp/"
create_if_missing "LICENSE" "MIT License — see root document for full text"

# Template
create_if_missing "_templates/CHEATSHEET_TEMPLATE.md" \
"# <Domain> CLI — Cheat Sheet" "" "## Essentials" "- Command: \`...\` — Short purpose."

# Stream the list of files into the loop (no temp vars, no mapfile)
cat <<'EOL' | while IFS= read -r f; do
system/filesystem_basics/README.md
system/search_find/README.md
system/text_processing/README.md
system/permissions_users/README.md
system/processes_jobs/README.md
system/networking_tools/README.md
system/archives_compression/README.md
system/disk_filesystems/README.md
system/logs_services/README.md
system/json_yaml_cli/README.md
system/security_crypto/README.md
system/sync_backup/README.md
system/shell_customization/README.md

dev/git/README.md
dev/github_cli/README.md
dev/node_npm_yarn/README.md
dev/python_pip_venv/README.md
dev/java_maven_gradle/README.md
dev/go_cargo_ruby/README.md
dev/php_composer/README.md
dev/make_cmake/README.md

dev/frontend/react/README.md
dev/frontend/angular/README.md
dev/frontend/vue/README.md
dev/frontend/astro/README.md
dev/frontend/nextjs/README.md
dev/frontend/svelte/README.md

dev/tooling/vite/README.md
dev/tooling/webpack/README.md
dev/tooling/babel/README.md
dev/tooling/eslint_prettier/README.md

dev/testing/jest/README.md
dev/testing/cypress/README.md
dev/testing/vitest/README.md
dev/testing/playwright/README.md

devops/docker/README.md
devops/podman_buildah/README.md
devops/kubernetes/README.md
devops/terraform/README.md
devops/ansible/README.md
devops/ci_cd/README.md
devops/registries/README.md

cloud/aws_cli/README.md
cloud/gcloud_cli/README.md
cloud/az_cli/README.md

databases/mysql_client/README.md
databases/psql/README.md
databases/mongo_shell/README.md
databases/redis_cli/README.md

os/debian_apt/README.md
os/rhel_yum_dnf/README.md
os/arch_pacman/README.md
os/macos_brew/README.md
os/wsl/README.md
EOL
  [[ -z "$f" ]] && continue
  title="$(basename "$(dirname "$f")" | tr '-' ' ' | tr '_' ' ' | sed 's/.*/\u&/')"
  create_if_missing "$f" "# $title — Cheat Sheet" "" "> Start from _templates/CHEATSHEET_TEMPLATE.md"
done

echo "Bootstrap complete."
