#!/bin/bash

# Store the secret in a variable
MY_SECRET="$1"

# Create a JSON object with the secret
JSON_OBJECT="{ \"secret\": \"$MY_SECRET\" }"

# Output the JSON object
echo "$JSON_OBJECT"
