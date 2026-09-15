# HomeHub Roadmap

## Roadmap Principle

HomeHub is a long-term modular product, but development should proceed through short working increments.

The architecture looks ahead; implementation moves one verified slice at a time.

Do not spend months building infrastructure before a working module exists.

---

## Phase 1 — Application Foundation

Goal:

Create the first runnable HomeHub application.

Scope:

- Expo project;
- React Native;
- TypeScript;
- Expo Router;
- HomeHub application shell;
- initial Core boundary;
- module boundary for Shopping;
- Web and Android development builds.

Exit condition:

HomeHub starts successfully and can navigate to the Shopping module.

---

## Phase 2 — Shopping Module

Goal:

Create the first genuinely useful HomeHub module.

Scope:

- shopping lists;
- products/items;
- quantities;
- edit and delete;
- purchased state;
- basic purchase history;
- focused business logic tests.

Exit condition:

A user can manage a shopping list through the HomeHub application without relying on mock data.

---

## Phase 3 — Local Data

Goal:

Make the first module persistent between application sessions.

Scope:

- local storage implementation;
- data loading and saving;
- error handling;
- migration/versioning strategy where needed.

Exit condition:

Shopping data survives application restart on supported platforms.

---

## Phase 4 — First Working MVP

Goal:

Deliver a compact but complete first HomeHub module.

Scope:

- stable Shopping UI;
- local persistence;
- CSV/TXT import;
- purchase history;
- validation;
- tests for important business rules;
- Web and Android verification.

Exit condition:

The Shopping module is usable as a real household tool and its module boundary is suitable for future expansion.

---

## Phase 5 — Remote Data and Synchronization

Goal:

Allow the same HomeHub data to be used across devices.

Candidate technology:

- Supabase;
- PostgreSQL;
- Supabase Auth;
- Supabase Realtime.

Implementation rule:

Remote infrastructure must remain behind application/data boundaries. Shopping business logic should not become a collection of Supabase-specific calls.

Exit condition:

The same household can securely access synchronized Shopping data from Web and Android.

---

## Phase 6 — Core Expansion

After the first module and synchronization are stable, expand shared capabilities only where a real requirement exists.

Possible Core capabilities:

- users;
- households;
- permissions;
- settings;
- notifications;
- categories;
- shared data services.

Do not implement unused Core features simply because they are planned.

---

## Phase 7 — Additional Modules

Add modules independently, based on value and learning goals.

Possible modules:

- Tasks and chores;
- Inventory;
- Budget;
- Expenses;
- Calendar;
- recurring purchases;
- automation;
- AI assistant.

Each new module should reuse Core where appropriate while keeping its own domain logic isolated.

---

## Long-Term Direction

HomeHub should evolve into a reliable household platform composed of modules rather than a monolithic application.

The exact order of future modules is intentionally not fixed. New modules should be selected after evaluating actual needs, complexity and the quality of the existing architecture.
