# Task 6 - Edge/IoT Gateway

## Goal
Run reliably on ARM64 edge nodes under tight resource budgets.

## Files
- `plan.md`: affinity/taints, hostPath buffering, and sync cron workflow.

## Key decisions
Use strict requests/limits, role-based node labels, and local buffering to survive intermittent connectivity.
