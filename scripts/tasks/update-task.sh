#!/bin/bash

# TOKEN="" ID=1 NAME="" NOTES="" sh scripts/tasks/update-task.sh

curl "http://localhost:4741/tasks/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "task": {
      "name": "'"${NAME}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
