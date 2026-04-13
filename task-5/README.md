# Task 5 - Legacy Monolith Breakup

## Goal
Use strangler pattern to incrementally migrate from monolith to microservices.

## Files
- `plan.md`: routing, shared PostgreSQL migration, service mesh split, retries/circuit breakers.

## Implementation notes
Start with path-based routing through gateway (`/api/auth/*` -> new auth service) while defaulting all else to monolith. Introduce weighted mesh routing to increase confidence before full cutover.
