#!/bin/bash

# TOKEN="" sh scripts/tasks/get-tasks.sh

curl "http://localhost:4741/tasks" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
