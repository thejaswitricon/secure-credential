#!/bin/bash

# Read the secrets from the JSON file
secrets=$(cat secrets.json)

# Use the secrets as needed
echo "Secrets:"
echo "$secrets"
