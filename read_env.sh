#!/bin/bash

# Extract the secret value
secret_value=${__SECRET:-}

# Create a JSON-encoded map
secrets_map="{ \"__SECRET\": \"$secret_value\" }"

# Output the JSON-encoded map
echo "$secrets_map"
