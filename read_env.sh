#!/bin/bash

secrets_file=$1
secrets_map={}

# Read the secrets file and populate the secrets map
while IFS='=' read -r key value; do
  if [[ $key =~ __[[:alnum:]]+ ]]; then
    secrets_map[$key]=$value
  fi
done < "$secrets_file"

# Encode the secrets map as JSON
secrets_json=$(jq -n "$(declare -p secrets_map)" | awk 'NR>1')

# # Access the secrets individually (example)
# echo "The value of __SECRET1 is: ${secrets_map["__SECRET1"]}"
# echo "The value of __SECRET2 is: ${secrets_map["__SECRET2"]}"

# Output the JSON-encoded secrets map
echo "$secrets_json"
