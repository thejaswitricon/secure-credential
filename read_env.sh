#!/bin/bash

# Extract the secret value
secret_value=${__SECRET:-}

# Remove the "__" prefix from the secret key
secret_key=${__SECRET/#__}

# Create a JSON-encoded map
secrets_map="{ \"$secret_key\": \"$secret_value\" }"

# Output the JSON-encoded map
echo "$secrets_map"
