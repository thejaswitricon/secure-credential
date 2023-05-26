#!/bin/bash

secrets_file=$1

# Read the secrets file and store the contents in a variable
secrets_json=$(cat "$secrets_file")

# Access the secrets individually (example)
__SECRET1=$(jq -r '.__SECRET1' <<< "$secrets_json")
__SECRET2=$(jq -r '.__SECRET2' <<< "$secrets_json")

# Use the secrets as needed
echo "The value of __SECRET1 is: $__SECRET1"
echo "The value of __SECRET2 is: $__SECRET2"
