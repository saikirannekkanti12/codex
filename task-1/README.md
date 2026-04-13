# Task 1 - Microservices Migration

This folder provides a production-ready baseline in `k8s/base/` for migrating from docker-compose to Kubernetes.

## Included
- Namespace `eshope`
- PostgreSQL with 5Gi PVC and Secret-driven credentials
- API deployment and ClusterIP service
- Frontend deployment and external LoadBalancer service
- Requests/limits for all containers
- Stretch goals included: probes, ConfigMap, initContainer

## Apply order
```bash
kubectl apply -f k8s/base/namespace.yaml
kubectl apply -f k8s/base/secret-db.yaml -f k8s/base/configmap-app.yaml
kubectl apply -f k8s/base/postgres.yaml
kubectl apply -f k8s/base/backend.yaml
kubectl apply -f k8s/base/frontend.yaml
```
