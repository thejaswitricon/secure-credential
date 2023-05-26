#!/bin/bash

secrets_file=$1
secrets_map={}

# Read the secrets file and populate the secrets map
while IFS='=' read -r key value; do
  secrets_map[$key]=$value
done < "$secrets_file"

# Encode the secrets map as JSON
secrets_json=$(jq -n --argjson secrets "${secrets_map[@]}" '$secrets')

# Access the secrets individually (example)
echo "The value of __SECRET1 is: ${secrets_map["__SECRET1"]}"
echo "The value of __SECRET2 is: ${secrets_map["__SECRET2"]}"

# Output the JSON-encoded secrets map
echo "$secrets_json"
