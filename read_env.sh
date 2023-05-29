#!/bin/bash

# Read the secrets from the JSON file
secrets=$(cat secrets.json)

# Convert the inputs to JSON-encoded map
encoded_inputs=$(echo "$secrets" | jq -R 'split("\n") | map(split("=")) | map({(.[0]): .[1]}) | add')

# Output the encoded inputs
echo "Encoded Inputs:"
echo "$encoded_inputs"
