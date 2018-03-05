#!/bin/bash

# TOKEN="" ID=3 sh scripts/tasks/delete-task.sh

curl "http://localhost:4741/tasks/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
