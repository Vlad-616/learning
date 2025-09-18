### Цели
- Встроить безопасность в конвейер и кластер (shift-left, policies, секреты).

### Задания
1. Включите image scanning (trivy/grype) в CI, падение на Critical.
2. Добавьте SAST/secret scan (semgrep/gitleaks/bandit) и отчёты.
3. Настройте секреты: SealedSecrets/External Secrets (или K8s Secret + KMS).
4. Введите policy-as-code (OPA Gatekeeper/Kyverno) — best practices и запреты.
5. Усильте PodSecurity, ограничьте capabilities, добавьте NetworkPolicy.

### Критерии приёмки
- Пайплайн фейлится на критических уязвимостях, отчёты доступны.
- Политики применены, нарушения блокируются.

### Что сдать
- Ссылка на PR + отчёты, манифесты политик и секретов.
