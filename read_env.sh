#!/bin/bash

# Read the secrets from the JSON file
secrets=$(cat secrets.json)

# Convert the inputs to JSON-encoded map and output directly
echo "$secrets" | jq -n 'split("\n") | map(split("=")) | map({ (.[0]): .[1] }) | add'
