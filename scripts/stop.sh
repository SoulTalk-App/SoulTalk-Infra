#!/bin/bash

# SoulTalk - Stop Local Development Environment

echo "🛑 Stopping SoulTalk Development Environment..."

# Go to the infra directory
cd "$(dirname "$0")/.."

# Stop all services
docker-compose down

echo "✅ All services stopped!"
echo ""
echo "💡 To start again: ./SoulTalk-Infra/scripts/start.sh"