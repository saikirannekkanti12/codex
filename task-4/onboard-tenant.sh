#!/usr/bin/env bash
set -euo pipefail
TENANT=${1:?usage: onboard-tenant.sh <tenant-name>}
kubectl create namespace "$TENANT" --dry-run=client -o yaml | kubectl apply -f -
kubectl -n "$TENANT" apply -f - <<YAML
apiVersion: v1
kind: ResourceQuota
metadata: {name: tenant-quota}
spec:
  hard: {cpu: "4", memory: 8Gi, pods: "10"}
---
apiVersion: v1
kind: LimitRange
metadata: {name: tenant-limits}
spec:
  limits:
  - type: Container
    max: {cpu: "1", memory: 2Gi}
YAML
echo "Tenant $TENANT bootstrapped"
