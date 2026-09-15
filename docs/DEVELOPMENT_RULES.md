# Development Rules

## Purpose

This document defines the development rules for the HomeHub project.

The goal is to keep the project:

- understandable;
- maintainable;
- predictable.

---

## Language Rules

### Source Code

- Source code uses English.
- File names use English.
- Variables, functions, and classes use English.
- Standard technical terms use English.

### Code Comments

Code comments are written in Russian.

Comments should explain:

- purpose of a block;
- complex logic;
- important decisions.

Example:

```powershell
# Проверяем состояние репозитория Git
git status
```

---

## General Development Principles

### Keep It Simple

Prefer simple and clear solutions.

Avoid:

- unnecessary complexity;
- duplicate logic;
- unclear structure.

### Small Logical Changes

Each change should:

- have a clear purpose;
- contain related modifications only;
- be easy to review.

---

## Code Style

### Readability

Code should be easy to understand.

Use:

- clear names;
- consistent formatting;
- logical structure.

---

## PowerShell Rules

### Encoding

All project files must use UTF-8 encoding.

Do not use:

- ANSI;
- Windows-1251.

### Script Structure

PowerShell scripts should contain:

1. Script purpose.
2. Logical sections.
3. Comments before important blocks.
4. Safe execution behavior.

Example:

```powershell
# Проверяем файлы документации проекта
Get-ChildItem docs
```

---

## Git Rules

Before commit:

```powershell
git status
git diff
git diff --cached
```

Commit messages should be clear.

Examples:

```text
docs: update documentation
chore: add development tools
feat: add new functionality
```

After push:

```powershell
git status
```

Expected result:

```text
nothing to commit, working tree clean
```

---

## Documentation Rules

Documentation must:

- use UTF-8 encoding;
- have a clear purpose;
- be updated with project changes;
- contain reproducible instructions.

---

## Project Structure Rules

The project structure should remain clear.

Current structure:

```text
HomeHub

├── docs
│   ├── Project documentation
│   └── HOW_TO instructions
│
├── scripts
│   └── Automation scripts
│
└── .vscode
    └── Development environment settings
```

---

## AI Collaboration Rules

AI is a development tool.

AI should:

- follow project rules;
- preserve project structure;
- explain changes;
- avoid unnecessary modifications.

Final decisions remain controlled by the project owner.

---

## Tool Localization Rules

Project tools should support localization.

Rules:

- Internal code uses English.
- Commands and technical terms use English.
- User-facing messages should support translation.
- Default language is English.
- Localization settings should be stored separately from the script logic.

Current approach:

- Development tools may display English text with Russian translation in brackets.
- Future versions may use separate language files.

---

## Long-Term Project Rule

Code and documentation should be written so the project can be understood without previous conversation history.
