#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

docker compose -f docker-compose.yml up -d --no-recreate

echo "=========================================================="
echo "🚀 Woodpecker CI Server & Builders Started Successfully!"
echo "=========================================================="
echo "🛠️  Woodpecker CI Server: http://localhost:8000"
echo "=========================================================="
