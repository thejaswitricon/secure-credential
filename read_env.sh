#!/bin/bash

SECRET_JSON="$1"

# Decode the JSON object and extract the secret value
ENCODED_SECRET=$(echo "$SECRET_JSON" | jq -r '.secret')
SECRET=$(echo "$ENCODED_SECRET" | base64 -d)

# Use the SECRET variable in your script as needed
echo "Decoded secret: $SECRET"
