# 🛠️ Bookstore DevOps — CI/CD Infrastructure

Изолированная CI/CD инфраструктура для экосистемы микросервисов Bookstore на базе **Woodpecker CI** и принципа **Single Source of Truth (DRY)**.

---

## 🏗️ Архитектура

* **Тёплые кэши сборок**: Постоянно запущенные `bookstore-java-builder` и `bookstore-frontend-builder` сохраняют `.m2` и `node_modules` кэши между прогонами пайплайнов.

---

## 🚀 Быстрый старт

### 1. Открытие публичного HTTPS-туннеля (для GitHub Webhooks & OAuth)

* **Рекомендуется (Cloudflare Tunnel - zero-config):**
  ```bash
  npx --yes cloudflared tunnel --url http://localhost:8000
  ```
  *Скопируйте сгенерированный HTTPS URL (например, `https://xxxx.trycloudflare.com`).*

* **Альтернатива (SSH Tunnel):**
  ```bash
  ssh -R 80:localhost:8000 nokey@localhost.run
  ```

### 2. Настройка переменных окружения `.env`

Создайте `.env` из примера:
```bash
cp .env.example .env
```

Заполните переменные GitHub OAuth App (**Settings -> Developer settings -> OAuth Apps**):
* **Homepage URL**: `https://<YOUR_TUNNEL_DOMAIN>.trycloudflare.com`
* **Authorization callback URL**: `https://<YOUR_TUNNEL_DOMAIN>.trycloudflare.com/authorize`

```env
WOODPECKER_GITHUB_CLIENT=your-client-id
WOODPECKER_GITHUB_SECRET=your-client-secret
WOODPECKER_HOST=https://<YOUR_TUNNEL_DOMAIN>.trycloudflare.com
```

### 3. Запуск CI/CD сервера и билдеров

```bash
./run.sh
```

Откройте Woodpecker UI по адресу `http://localhost:8000` или по вашему HTTPS туннелю и авторизуйтесь через GitHub.
