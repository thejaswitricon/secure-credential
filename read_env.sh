#!/bin/bash

__SECRET="$1"

# Create an associative array with the key-value pair
declare -A output
output["__SECRET"]=$__SECRET

# Convert the associative array to JSON using jq
json_output=$(declare -p output | jq -n 'from_entries')

echo "$json_output"
