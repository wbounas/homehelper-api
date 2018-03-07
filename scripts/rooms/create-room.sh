#!/bin/bash

# TOKEN="" NAME="example text for testing purposes" sh scripts/rooms/create-room.sh

curl "http://localhost:4741/rooms" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "room": {
      "name": "'"${NAME}"'"
    }
  }'

echo
