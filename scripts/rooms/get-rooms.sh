#!/bin/bash

# TOKEN="" sh scripts/rooms/get-rooms.sh

curl "http://localhost:4741/rooms" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
