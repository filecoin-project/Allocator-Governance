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

echo "Sending request..."
response=$(curl -v \
   --max-time 30 \
   --header "Content-Type: application/json" \
   --header "User-Agent: GitHub-Webhook-Sender" \
   --header "bypass-tunnel-reminder: true" \
   --request PUT \
   --data "${GITHUB_EVENT_JSON}" \
   "${APPLY_ALLOCATOR_BACKEND_URL}/api/v1/refreshes/upsert-from-issue")

status=$(echo "$response" | jq -r '.status')

if [[ $status -ge 200 && $status -lt 300 ]]; then
    echo "✅ Success! Status: $status"
    exit 0
else
    echo "❌ Webhook failed with status $status"
    exit 1
fi
