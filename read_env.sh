#!/bin/bash

# Store the secret key and value
SECRET_KEY="$1"
SECRET_VALUE="$2"

# Create a JSON object with the secret key-value pair
JSON_OBJECT="{ \"$SECRET_KEY\": \"$SECRET_VALUE\" }"

# Output the JSON object
echo "$JSON_OBJECT"
