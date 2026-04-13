# Black Friday Resiliency Challenge

## Objectives Implemented
- HPA for frontend and backend (CPU 50%)
- Minimum 3 replicas and topology spread constraints
- Rolling update and rollback workflow with readiness gates
- PDB for backend

## Starter Manifests
- `hpa.yaml`
- `pdb.yaml`
- Patch Task 1 deployments to replicas=3 and add `topologySpreadConstraints`.

## Validate
```bash
kubectl -n eshope apply -f hpa.yaml -f pdb.yaml
kubectl -n eshope rollout status deploy/api
kubectl -n eshope set image deploy/api api=eshope/api:v2
kubectl -n eshope rollout undo deploy/api
```
