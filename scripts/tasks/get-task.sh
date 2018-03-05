#!/bin/bash

# TOKEN="" ID=1 sh scripts/tasks/get-task.sh

curl "http://localhost:4741/tasks/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
