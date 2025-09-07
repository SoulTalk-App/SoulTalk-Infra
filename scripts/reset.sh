#!/bin/bash

# SoulTalk - Reset Development Environment

echo "🔄 Resetting SoulTalk Development Environment..."
echo "⚠️  This will remove all data (users, emails, etc.)"
echo ""

read -p "Are you sure? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Reset cancelled"
    exit 1
fi

# Go to the infra directory
cd "$(dirname "$0")/.."

echo "🛑 Stopping services..."
docker-compose down

echo "🗑️  Removing volumes (data)..."
docker-compose down -v

echo "🔧 Removing containers..."
docker-compose rm -f

echo "🚀 Starting fresh environment..."
docker-compose up -d

echo "⏳ Waiting for services to start..."
sleep 15

echo "🔄 Re-importing Keycloak realm..."
sleep 5

# Get admin token and import realm
ADMIN_TOKEN=$(curl -s -X POST 'http://localhost:8080/realms/master/protocol/openid-connect/token' \
  -d 'grant_type=password&username=admin&password=admin&client_id=admin-cli' \
  -H 'Content-Type: application/x-www-form-urlencoded' | \
  python3 -c "import sys, json; print(json.load(sys.stdin).get('access_token', 'ERROR'))" 2>/dev/null)

if [ "$ADMIN_TOKEN" != "ERROR" ]; then
    curl -X POST "http://localhost:8080/admin/realms" \
      -H "Authorization: Bearer $ADMIN_TOKEN" \
      -H "Content-Type: application/json" \
      -d @keycloak-realm-config.json > /dev/null 2>&1
    
    # Configure SMTP
    curl -X PUT "http://localhost:8080/admin/realms/soultalk" \
      -H "Authorization: Bearer $ADMIN_TOKEN" \
      -H "Content-Type: application/json" \
      -d '{
        "smtpServer": {
          "host": "mailhog",
          "port": "1025",
          "from": "noreply@soultalk.local",
          "fromDisplayName": "SoulTalk Development",
          "starttls": "false",
          "auth": "false"
        }
      }' > /dev/null 2>&1
    
    echo "✅ Keycloak realm configured"
else
    echo "❌ Failed to configure Keycloak realm"
fi

echo ""
echo "🎉 Development environment reset complete!"
echo ""
echo "📱 Ready to start developing!"