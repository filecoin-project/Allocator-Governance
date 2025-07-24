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

status=$(echo "$response" | jq -r '.status // empty')
message=$(echo "$response" | jq -r '.message // .error // empty')
errors=$(echo "$response" | jq -r '.errors[]? // empty' | tr '\n' '; ')

if [[ $status -ge 200 && $status -lt 300 ]]; then
    echo "✅ Success! Status: $status"
    echo "## ✅ Webhook Success" >> "$GITHUB_STEP_SUMMARY"
    echo "**Issue:** [$ISSUE_TITLE]($ISSUE_URL)" >> "$GITHUB_STEP_SUMMARY"
    echo "**Status:** $status" >> "$GITHUB_STEP_SUMMARY"
    exit 0
else
    echo "❌ Webhook failed with status $status"
    echo "## ❌ Webhook Failed" >> "$GITHUB_STEP_SUMMARY"
    echo "**Issue:** [$ISSUE_TITLE]($ISSUE_URL)" >> "$GITHUB_STEP_SUMMARY"
    echo "**Status:** $status" >> "$GITHUB_STEP_SUMMARY"
    [[ -n "$message" ]] && echo "**Message:** $message" >> "$GITHUB_STEP_SUMMARY"
    [[ -n "$errors" ]] && echo "**Errors:** ${errors%; }" >> "$GITHUB_STEP_SUMMARY"
    exit 1
fi