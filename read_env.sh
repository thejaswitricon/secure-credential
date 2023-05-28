#!/bin/bash

# Create a JSON object with the secret key-value pair
JSON_OBJECT="{ \"$1\": \"$2\" }"

# Output the JSON object
echo "$JSON_OBJECT"
