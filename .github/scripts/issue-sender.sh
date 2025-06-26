#!/bin/bash

set -e  # Exit on any error

echo "=== GitHub Webhook Sender ==="
echo "Sending full GitHub event payload"
echo "Event: ${EVENT_NAME}"
echo "Action: ${EVENT_ACTION}"
echo "Backend URL: ${APPLY_ALLOCATOR_BACKEND_URL}"

if [[ -z "${APPLY_ALLOCATOR_BACKEND_URL}" ]]; then
    echo "❌ Error: APPLY_ALLOCATOR_BACKEND_URL is not set"
    exit 1
fi

response=$(curl -s -w "\n%{http_code}" \
  --header "Content-Type: application/json" \
  --header "User-Agent: GitHub-Webhook-Sender" \
  --request PUT \
  --data "${GITHUB_EVENT_JSON}" \
  "${APPLY_ALLOCATOR_BACKEND_URL}/api/v1/refreshes/upsert-from-issue")

http_code=$(echo "$response" | tail -n1)
body=$(echo "$response" | head -n -1)

echo "Response status: ${http_code}"
echo "Response body: ${body}"

if [[ ${http_code} -ge 200 && ${http_code} -lt 300 ]]; then
    echo "✅ Webhook sent successfully!"
else
    echo "❌ Webhook failed with status ${http_code}"
    exit 1
fi
