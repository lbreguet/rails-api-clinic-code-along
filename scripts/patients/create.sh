#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content_Type: application/json" \
  --data '{
    "patient": {
      "name": "'"${NAME}"'",
      "diagnosis": "'"${DIAGNOSIS}"'",
      "born_on": "'"${BORN_ON}"'"
    }
  }'

echo
