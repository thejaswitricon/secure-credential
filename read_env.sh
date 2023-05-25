#!/bin/bash

# Parse input as JSON and iterate over key-value pairs
jq -r 'to_entries[] | select(.key | startswith("__")) | .key + "=" + .value' |
while IFS='=' read -r key value; do
  # Remove the leading "__" from the key
  secret_key="${key:2}"

  # Process the secret value as per your requirement
  # For example, you can export it as an environment variable
  export "$secret_key"="$value"

  # Print the exported key-value pair (optional)
  echo "Exported: $secret_key=$value"
done
