### Local Jenkins + GitHub Actions to GHCR + Minikube Deploy

- **Local Jenkins**: provided via `docker-compose.yml` with Docker and kubectl inside.
- **GitHub Actions**: builds and pushes to GHCR, deploys to Minikube using a self-hosted runner.
- **Kubernetes**: manifests in `k8s/` for a `Deployment` and `Service` (NodePort 30080).

### Обучение DevOps
- Программа на 12 недель: `LEARNING_PLAN.md`
- Лабы и задания: `labs/README.md`

### Prerequisites
- Docker Desktop or Docker Engine
- Minikube with kubectl configured on your host
- GitHub repo with permissions to push to GHCR

### Start Jenkins locally
```bash
docker compose up -d --build
# open http://localhost:8080 (admin/admin)
```

### Configure Jenkins
- Admin user: `admin` / `admin` (change after first login)
- Add secret text credential `ghcr_pat` if you want Jenkins to push to GHCR.

### Minikube quick start
```bash
minikube start
kubectl get nodes
kubectl apply -f k8s/
minikube service app --url
```

### GitHub Actions (self-hosted runner)
- Create a self-hosted runner on the same machine where Minikube is running.
- Label it with `minikube`.
- Ensure the runner user has access to your kubeconfig (e.g., `~/.kube/config`).
- The workflow `.github/workflows/ci-cd.yml` will:
  - build and push to `ghcr.io/<owner>/<repo>`
  - apply manifests and update the deployment image
