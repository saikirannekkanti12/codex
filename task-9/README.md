# Task 9 - Serverless on Kubernetes

## Goal
Adopt event-driven, scale-to-zero processing for spiky workloads.

## Files
- `knative-service.yaml`: Knative Service for `video-processor` (0..20 autoscaling).
- `plan.md`: Knative+KEDA integration and tracing/monitoring guidance.

## Apply
```bash
kubectl apply -f knative-service.yaml
```
