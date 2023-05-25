#!/bin/bash

__SECRET="$1"

# Remove the prefix "__" from the key
key="${__SECRET:2}"

# Generate a JSON-encoded map of string keys and string values
json_output="{ \"$key\": \"$__SECRET\" }"

echo "$json_output"
