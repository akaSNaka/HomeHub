# AI Guide

## Purpose

This document is the operational guide for AI assistants working on HomeHub.

The repository documentation is the source of truth. An AI assistant must be able to understand and continue the project without relying on previous conversation history.

---

## Project Identity

HomeHub is a modular household management platform.

It is not a single-purpose shopping-list application. Shopping is the first business module used to validate the architecture and create the first working product slice.

The long-term system consists of:

- shared Core capabilities;
- independent business modules;
- infrastructure services for persistence, synchronization and external integrations.

---

## Current Goal

Build the first working HomeHub slice:

- Expo + React Native + TypeScript application;
- Expo Router navigation;
- HomeHub application shell;
- Core boundary;
- Shopping module;
- local data persistence;
- focused tests for business logic;
- Web and Android verification.

Do not expand the scope to future modules until this slice works.

---

## Architecture Rules

### Core

Core owns shared application capabilities.

Examples:

- users;
- households;
- permissions;
- settings;
- shared UI;
- shared application services;
- synchronization and data access boundaries.

Core must not contain Shopping-specific business rules.

### Modules

Each business module owns its domain logic.

A module should:

- have a clear boundary;
- own its types and business rules;
- minimize dependencies on other modules;
- contain focused tests;
- be extendable without rewriting unrelated modules.

Do not place module-specific logic in Core merely because it is convenient.

### Infrastructure

Infrastructure contains concrete implementations for storage, database, authentication, synchronization, file handling and external services.

Business modules should depend on stable application/data boundaries rather than directly coupling their domain logic to a vendor when this can reasonably be avoided.

Supabase is a planned backend candidate, not a reason to redesign the domain model around a vendor API.

---

## Technology Rules

Current application direction:

- TypeScript;
- React Native;
- Expo;
- Expo Router.

Do not introduce Python, another frontend framework, or another application stack without an explicit project decision.

A future backend may use Supabase/PostgreSQL, but backend implementation is not the first task.

---

## Development Workflow

Use this sequence for every meaningful change:

1. Define the goal.
2. Identify the required inputs and affected area.
3. Make the smallest logical change.
4. Run the relevant check or test.
5. Inspect the result.
6. Explain what changed and why.
7. Commit only when the change is verified.

Prefer one coherent task at a time.

Do not create large amounts of infrastructure before the next working product increment is visible.

---

## AI Behavior

The AI assistant should:

- read the relevant project documentation before proposing structural changes;
- preserve established architecture and naming conventions;
- avoid unnecessary refactoring;
- explain unfamiliar code before replacing it;
- distinguish facts from proposals;
- ask for an explicit decision when a technology or architectural choice would materially change the project;
- keep changes small and reversible;
- verify code instead of assuming it works.

The AI assistant must not silently change the technology stack or introduce a new architectural layer because it prefers that approach.

---

## Documentation Responsibilities

Update project documentation when a decision changes the architecture, technology, workflow or project state.

Do not create documentation for its own sake. Documentation should help a future developer or AI continue the project.

`PROJECT_MEMORY.md` describes current state.

`ROADMAP.md` describes planned implementation sequence.

`ARCHITECTURE.md` describes stable architectural decisions.

`DEVELOPMENT_RULES.md` describes development rules.

This file describes how an AI should operate within those rules.
