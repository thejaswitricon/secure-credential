#!/bin/bash

# Read the secret from the workflow input
secret="$1"

# Create an associative array to store key-value pairs
declare -A json_map

# Store the secret in the associative array
json_map["secret"]=$secret

# Convert the associative array to JSON
json=$(declare -p json_map)
json=${json#*=}
json=${json#'{'}
json=${json%'}'}

# Output the JSON-encoded map
echo "$json" > secret.json
