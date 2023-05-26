#!/bin/bash

# Read the "__SECRET" secret from the environment
SECRET=$1

# Remove the "__" prefix from the secret key
SECRET_KEY="${SECRET//__}"

# Create a JSON object with the modified secret key and value
JSON=$(jq -n --arg key "$SECRET_KEY" --arg value "$SECRET" '{"\($key)": "\($value)"}')

# Store the JSON-encoded secret in a file
echo $JSON > secret.json
