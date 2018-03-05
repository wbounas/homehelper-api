#!/bin/bash

# TOKEN="" NAME="example text for testing purposes" sh scripts/tasks/create-task.sh

curl "http://localhost:4741/tasks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "task": {
      "name": "'"${NAME}"'"
    }
  }'

echo
