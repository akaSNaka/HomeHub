# Project Memory

## Project

Name:

HomeHub

Purpose:

A modular household management platform composed of independent business modules built on a shared Core and infrastructure layer.

The project is intended to become a practical household "hub" rather than a single-purpose application.

---

## Current Stage

Stage:

Architecture finalized for the first implementation slice. Product implementation has not started yet.

Completed:

- Git repository setup.
- GitHub synchronization.
- VS Code project configuration.
- Documentation structure created.
- Development guides added.
- Initial modular architecture defined.
- First business module selected: Shopping.
- Initial technology direction selected: Expo + React Native + TypeScript.

Current repository state:

- `src/` contains no application implementation yet.
- `tests/` contains no application tests yet.
- `AI_GUIDE.md` defines how an AI assistant should work with the project.
- `ROADMAP.md` defines the implementation sequence.

---

## Product Concept

HomeHub is a modular household platform.

Core provides shared capabilities such as:

- users;
- households;
- permissions;
- settings;
- shared UI and application services;
- synchronization and data access rules.

Business modules contain their own domain logic and should minimize dependencies on other modules.

The first module is Shopping. Future modules may include:

- tasks and chores;
- inventory;
- household budget;
- expenses;
- calendar;
- automation;
- AI assistant.

---

## First Implementation Slice

The first implementation target is a working HomeHub application shell with the Shopping module integrated into it.

The first slice should establish:

1. Expo application.
2. TypeScript codebase.
3. Expo Router navigation.
4. HomeHub Core boundary.
5. Module boundary for Shopping.
6. First working Shopping screens.
7. Local data persistence.
8. Basic tests for Shopping business logic.
9. Android and Web development builds.

The first slice must be small enough to reach a working application quickly, while keeping the module boundaries valid for future expansion.

---

## Backend Direction

A remote backend is part of the long-term architecture, but the first implementation should not make business modules directly dependent on a specific backend provider.

Supabase/PostgreSQL remains a candidate for authentication, remote storage and synchronization. The application should access infrastructure through clear boundaries so that the backend can be introduced or replaced without rewriting module business logic.

---

## Development Rules

Important:

- Keep project documentation updated when the project state changes.
- Use UTF-8 encoding.
- Commit logical changes.
- Check git status before and after changes.
- Work in small, verifiable steps.
- Do not introduce technologies that are not part of the agreed architecture without an explicit decision.
- Prefer working product increments over preparatory infrastructure.

---

## Next Steps

1. Create the initial Expo + TypeScript application.
2. Establish the HomeHub Core and module directory boundaries.
3. Implement the first Shopping functionality.
4. Add local persistence.
5. Add focused tests for business logic.
6. Verify the application on Web and Android.
7. Only after the first working slice, introduce remote synchronization and authentication.
