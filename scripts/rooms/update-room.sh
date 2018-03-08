#!/bin/bash

# TOKEN="" ID=1 NAME="" NOTES="" sh scripts/rooms/update-room.sh

curl "http://localhost:4741/rooms/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "room": {
      "name": "'"${NAME}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
