# Sample E-Commerce 3-Tier Application

This folder provides runnable sample code that matches the Kubernetes manifests:

- **Frontend**: Node.js app (`code/frontend`) serving a simple shopping UI on port `80`.
- **Backend**: Flask API (`code/backend`) on port `5000`.
- **Database**: PostgreSQL (`code/db/init.sql`) with product seed data.

## Local run with Docker Compose

```bash
docker compose -f code/docker-compose.yml up --build
```

Endpoints:
- Frontend: http://localhost:8080
- API: http://localhost:5000/healthz
