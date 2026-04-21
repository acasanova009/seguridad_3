#!/bin/bash

URL="http://0.0.0.0:8082/realms/nova"
#URL=http://172.19.0.9:8080/realms/nova
echo "Testing connection to $URL ..."
echo

# Try curl
response=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$response" -eq 200 ]; then
  echo "✅ SUCCESS: Keycloak is reachable (HTTP $response)"
else
  echo "❌ ERROR: Keycloak not reachable or returned HTTP $response"
fi

echo
echo "Fetching content preview..."
echo "-----------------------------------"

curl -s "$URL" | head -n 20

echo "-----------------------------------"