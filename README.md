# Bookstore DevOps — CI/CD Infrastructure

Standalone CI/CD infrastructure for the Bookstore microservices ecosystem based on Woodpecker CI.

## 🚀 Quick Start

1. Copy `.env.example` to `.env` and fill in your GitHub OAuth App credentials:
   ```bash
   cp .env.example .env
   ```
2. Start the CI/CD server:
   ```bash
   ./ci-cd.sh
   ```
3. Open Woodpecker UI at [http://localhost:8000](http://localhost:8000) and sign in via GitHub.
