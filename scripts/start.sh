#!/bin/bash

# SoulTalk - Start Local Development Environment

echo "🚀 Starting SoulTalk Development Environment..."

# Go to the infra directory
cd "$(dirname "$0")/.."

# Start all services
echo "📦 Starting Docker services..."
docker-compose up -d

# Wait for services to be ready
echo "⏳ Waiting for services to start..."
sleep 10

# Check service status
echo "🔍 Checking service health..."

# Check backend
if curl -s http://localhost:8000/health > /dev/null; then
    echo "✅ Backend API: http://localhost:8000"
else
    echo "❌ Backend API: Failed to start"
fi

# Check Keycloak
if curl -s http://localhost:8080/realms/soultalk > /dev/null; then
    echo "✅ Keycloak: http://localhost:8080"
else
    echo "❌ Keycloak: Failed to start"
fi

# Check Mailhog
if curl -s http://localhost:8025 > /dev/null; then
    echo "✅ Mailhog: http://localhost:8025"
else
    echo "❌ Mailhog: Failed to start"
fi

echo ""
echo "🎉 Development environment is ready!"
echo ""
echo "📱 To start the mobile app:"
echo "   cd SoulTalk-Mobile && npm start"
echo ""
echo "🔗 Quick Links:"
echo "   • API Docs: http://localhost:8000/docs"
echo "   • Keycloak Admin: http://localhost:8080/admin (admin/admin)"
echo "   • Email Testing: http://localhost:8025"
echo ""
echo "📖 View logs: ./SoulTalk-Infra/scripts/logs.sh"
echo "🛑 Stop services: ./SoulTalk-Infra/scripts/stop.sh"