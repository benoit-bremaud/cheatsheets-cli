# Contributing Guidelines

Thank you for contributing to **CLI Cheatsheets**!  
This project is organized with GitHub Projects and follows clear standards to ensure consistency and quality.

---

## 📂 Repository Workflow

- **Branching**:  
  - Create a new branch for each issue.  
  - Naming convention:  
    - `feat/<domain>-<sheet>` (new sheet)  
    - `fix/<domain>-<sheet>` (bug fix)  
    - `docs/<topic>` (documentation update)

- **Commits**:  
  - Follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).  
  - Example:  
    - `feat(system): add filesystem_basics cheatsheet`  
    - `fix(devops): correct docker build command`  
    - `docs(readme): update contribution guidelines`

- **Pull Requests**:  
  - PRs are required for all changes.  
  - The [PR template](.github/pull_request_template.md) will guide you through the checklist.  
  - Always link the issue: `Closes #<number>`.

---

## 📝 Issues

Please use the right **Issue Template**:

- **New cheatsheet** → Propose a new CLI domain or tool  
- **Bug report** → Report incorrect commands, formatting, or broken scripts  
- **Improvement request** → Suggest enhancements to existing sheets or repo structure

All issues should be linked to a **milestone** (release version) and added to the **Roadmap Project board**.

---

## ✅ Definition of Done (DoD) for Cheatsheets

A cheatsheet is **Done** when it includes:

1. **Essentials**: ≥10 commands with clear purpose (EN only)  
2. **Common Patterns**: ≥3 reusable workflows  
3. **Tasks by Scenario**: Init / Daily Ops / Debug  
4. **Tips & Pitfalls**: ≥3 items (good practices & caveats)  
5. **Short Reference Table** (action → command)  
6. **Links**: official docs (1–3)  
7. **Quality**: verified commands, Markdown lint passes  

---

## 🔄 Project Board

- All issues are tracked in the **CLI Cheatsheets Roadmap** Project.  
- Columns: *Backlog → Todo → In Progress → Review → Done*.  
- **WIP Limit**: max 2 issues in *In Progress* at the same time.

---

## 🤝 Contribution Flow

1. Pick/create an Issue (use a template).  
2. Create a branch: `git switch -c feat/system-filesystem-basics`.  
3. Work on the cheatsheet following the DoD.  
4. Commit with Conventional Commits.  
5. Open a Pull Request (PR template will guide you).  
6. Move the issue card on the Project Board.  
7. PR reviewed and merged → Issue closed automatically.

---

## 📌 Notes

- Write everything in **English** (commands, comments, docs).  
- Use **atomic commits** (one logical change per commit).  
- Prefer **squash or rebase merges** for a clean history.  
