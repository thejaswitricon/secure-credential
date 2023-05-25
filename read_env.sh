#!/bin/bash

__SECRET="$1"

# Check if the secret name starts with "__" and remove it if true
if [[ $__SECRET == __* ]]; then
  key="${__SECRET:2}"
else
  key="$__SECRET"
fi

# Generate a JSON-encoded map of string keys and string values
json_output="{ \"$key\": \"$__SECRET\" }"

echo "$json_output"
