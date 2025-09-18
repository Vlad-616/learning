### Программа прокачки DevOps (12 недель)

- **Формат**: 6-10 часов в неделю. Каждая неделя: теория → практика (labs) → контрольный список.
- **Результат**: рабочий CI/CD, Docker/Kubernetes, IaC (Terraform), мониторинг/логирование, безопасность, GitOps, SRE практики.

#### Неделя 1 — Git, основы CI, Jenkins/GitHub Actions
- Теория: Git-flow, PR, Code Review, CI концепции.
- Практика: см. `labs/01-git-ci`.
- Выход: репозиторий с CI на PR (линут, тесты), локальный Jenkins.

#### Неделя 2 — Docker продвинутый
- Теория: multi-stage, слои, кеширование, security (rootless), SBOM.
- Практика: `labs/02-docker`.
- Выход: оптимизированные Dockerfile, образы в GHCR.

#### Неделя 3 — Kubernetes основы (Minikube)
- Теория: Pod, Deployment, Service, Ingress, Probes, Requests/Limits.
- Практика: `labs/03-k8s-basics`.
- Выход: приложение в Minikube, blue/green или rollout.

#### Неделя 4 — Helm
- Теория: chart, values, шаблоны, зависимости, правила версионирования.
- Практика: `labs/04-helm`.
- Выход: helm chart, параметризация окружений.

#### Неделя 5 — Terraform (IaC)
- Теория: стейт, backend, модули, workspaces, переменные/секреты.
- Практика: `labs/05-terraform`.
- Выход: инфраструктура в коде (локально/облако), линтеры, план/апплай в CI.

#### Неделя 6 — CI/CD углубление
- Теория: стратегии деплоя, артефакты, кэш, матрицы, монорепо.
- Практика: `labs/06-cicd-advanced`.
- Выход: полноценный pipeline: build → тесты → контейнер → деплой в K8s.

#### Неделя 7 — Observability: мониторинг
- Теория: SLI/SLO/SLA, Prometheus, Alertmanager, Grafana.
- Практика: `labs/07-observability`.
- Выход: дашборды графаны, алерты по метрикам приложения.

#### Неделя 8 — Логирование
- Теория: EFK/PLG, структурированные логи, корреляция, retentions.
- Практика: `labs/08-logging`.
- Выход: централизованное логирование с запросами по trace/request id.

#### Неделя 9 — Безопасность
- Теория: секреты, image scanning, SAST/DAST, policy-as-code.
- Практика: `labs/09-security`.
- Выход: внедрённые проверки безопасности в CI/CD.

#### Неделя 10 — GitOps (Argo CD)
- Теория: declarative deploy, pull-based, multi-env, app-of-apps.
- Практика: `labs/10-gitops-argocd`.
- Выход: автосинк в кластер через Argo CD.

#### Неделя 11 — SRE практики
- Теория: Error Budget, бэк-офисы, incident response, постмортемы.
- Практика: `labs/11-sre-reliability`.
- Выход: SLO, алерты, runbook, симуляция инцидента.

#### Неделя 12 — Финал: стоимость/оптимизация и выпускной проект
- Теория: cost awareness, ресурсы, автоскейлинг, кэширование.
- Практика: `labs/12-capstone`.
- Выход: итоговый проект, презентация и репозиторий-резюме.

### Как работать
- Каждую неделю: прочитать теорию → выполнить lab → сделать PR → пройти чек-лист.
- Ведите `CHANGELOG.md`, используйте semantic versioning.
- Фиксируйте метрики: время билда, размер образа, время деплоя, ошибки.
