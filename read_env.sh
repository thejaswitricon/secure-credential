#!/bin/bash

# Read the secret from the workflow input
secret="$1"

# Create an empty associative array
declare -A json_map

# Set the "secret" key to the provided secret value
json_map["secret"]="$secret"

# Convert the associative array to JSON
json=$(jq -n "$(declare -p json_map)")

# Output the JSON-encoded map
echo "$json" > secret.json
