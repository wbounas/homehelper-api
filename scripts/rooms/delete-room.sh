#!/bin/bash

# TOKEN="" ID=3 sh scripts/rooms/delete-room.sh

curl "http://localhost:4741/rooms/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
