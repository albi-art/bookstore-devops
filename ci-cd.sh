#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "🛠️ Starting Bookstore DevOps & Woodpecker CI Server..."
docker compose up -d

echo "=========================================================="
echo "🚀 Woodpecker CI Server Started Successfully!"
echo "=========================================================="
echo "🛠️  Woodpecker CI Server: http://localhost:8000"
echo "=========================================================="
