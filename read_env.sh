#!/bin/bash

# Read the secrets from the JSON file
secrets=$(cat secrets.json)

# Extract the secret keys starting with "__" and output as JSON map
extracted_secrets=$(echo "$secrets" | jq 'with_entries(select(.key | startswith("__")))')

# Output the extracted secrets
echo "Extracted Secrets:"
echo "$extracted_secrets"
