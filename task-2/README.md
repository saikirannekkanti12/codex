# Task 2 - Black Friday Resiliency Challenge

## Goal
Harden the live E-Shop workload for traffic spikes and safe upgrades.

## Files
- `hpa.yaml`: frontend + backend autoscaling at 50% CPU target.
- `pdb.yaml`: backend PodDisruptionBudget for maintenance safety.
- `plan.md`: rollout and failure-simulation runbook.

## Runbook
1. Ensure metrics-server is installed.
2. Scale baseline deployments to at least 3 replicas.
3. Apply HPA/PDB and verify with `kubectl get hpa,pdb -n eshope`.
4. Run load test and observe replica increase.
5. Perform backend rolling update and rollback drills.
