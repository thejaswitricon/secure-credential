#!/bin/bash

# Read the secret from the workflow input
secret="$1"

# Create a JSON-encoded map
json="{ \"secret\": \"$secret\" }"

# Output the JSON-encoded map
echo "$json" > secret.json
