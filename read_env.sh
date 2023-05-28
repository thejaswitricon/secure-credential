#!/bin/bash

# Store the secret key and value
SECRET_KEY="$1"
SECRET_VALUE="$2"

# Create a JSON object with the key-value pair
JSON_OBJECT="{ \"$SECRET_KEY\": \"$SECRET_VALUE\" }"

# Save the JSON object to a file
echo "$JSON_OBJECT" > secret.json
