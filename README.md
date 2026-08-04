# Bookstore DevOps — CI/CD Infrastructure

Standalone CI/CD infrastructure for the Bookstore microservices ecosystem based on Woodpecker CI.

## 🚀 Quick Start

1. Open a public HTTPS tunnel for local development (required for GitHub Webhooks & OAuth):
   ```bash
   ssh -R 80:localhost:8000 nokey@localhost.run
   ```
   *Copy the generated HTTPS URL (e.g. `https://xxx.lhr.life`).*

2. Copy `.env.example` to `.env`:
   ```bash
   cp .env.example .env
   ```

3. Create a GitHub OAuth App (**Settings -> Developer settings -> OAuth Apps**):
   - **Homepage URL**: `https://<YOUR_TUNNEL_DOMAIN>.lhr.life`
   - **Authorization callback URL**: `https://<YOUR_TUNNEL_DOMAIN>.lhr.life/authorize`

4. Fill in `.env` with your `WOODPECKER_GITHUB_CLIENT`, `WOODPECKER_GITHUB_SECRET`, and `WOODPECKER_HOST`:
   ```env
   WOODPECKER_GITHUB_CLIENT=your-client-id
   WOODPECKER_GITHUB_SECRET=your-client-secret
   WOODPECKER_HOST=https://<YOUR_TUNNEL_DOMAIN>.lhr.life
   ```

5. Start the CI/CD server:
   ```bash
   ./ci-cd.sh
   ```

6. Open Woodpecker UI at `https://<YOUR_TUNNEL_DOMAIN>.lhr.life` (or `http://localhost:8000`) and sign in via GitHub.

