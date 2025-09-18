### Цели
- Развернуть приложение в Minikube с Deployment, Service, Ingress, probes.

### Задания
1. Добавьте `livenessProbe` и `readinessProbe` в `k8s/deployment.yaml`.
2. Пропишите `resources.requests/limits` и переменные окружения (как минимум `NODE_ENV`).
3. Создайте Ingress (включите `minikube addons enable ingress`) с маршрутом `/` к сервису.
4. Настройте стратегию обновления (`rollingUpdate`, `maxUnavailable/maxSurge`).
5. Примените манифесты и проверьте доступность (curl/браузер), посмотрите события (`kubectl describe`).
6. Смоделируйте обновление версии образа и проверьте безошибочный rollout.

### Критерии приёмки
- `kubectl get` показывает pod/deployment/service/ingress в состоянии Ready.
- Приложение доступно через Ingress/NodePort, probes успешны.
- Rollout проходит без даунтайма, есть история обновлений.

### Что сдать
- Ссылка на PR + команды/выводы kubectl, скриншоты работы Ingress.
