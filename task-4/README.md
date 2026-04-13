# Task 4 - Multi-Tenant SaaS Platform

## Goal
Provide tenant isolation with quotas, network controls, and onboarding automation.

## Files
- `onboard-tenant.sh`: bootstraps namespace + quota + limit range.
- `plan.md`: network policy and ingress architecture details.

## Usage
```bash
./onboard-tenant.sh tenant-a
./onboard-tenant.sh tenant-b
./onboard-tenant.sh tenant-c
```
Then apply tenant-specific app manifests and ingress routes.
