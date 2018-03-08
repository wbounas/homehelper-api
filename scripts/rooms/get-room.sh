#!/bin/bash

# TOKEN="" ID=1 sh scripts/rooms/get-room.sh

curl "http://localhost:4741/rooms/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
