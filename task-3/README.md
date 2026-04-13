# Task 3 - GitOps & Observability Overhaul

## Goal
Move to GitOps and install monitoring/logging foundations.

## Files
- `argocd-application.yaml`: Argo CD application pointing to your manifests repo.
- `plan.md`: implementation sequence for Argo CD, Prometheus/Grafana, and Loki/EFK.

## Suggested sequence
1. Install Argo CD.
2. Push manifests to private Git repository.
3. Apply Application and enable auto-sync.
4. Install kube-prometheus-stack with Helm.
5. Add app metrics scraping + dashboards.
