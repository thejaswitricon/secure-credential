#!/bin/bash

# Store the secrets in an array
secrets=("$@")

# Create an empty JSON object
JSON_OBJECT="{"

# Iterate over each secret
for secret in "${secrets[@]}"; do
  # Extract the key and value from the secret
  KEY=$(echo "$secret" | cut -d'=' -f1)
  VALUE=$(echo "$secret" | cut -d'=' -f2-)

  # Add the key-value pair to the JSON object
  JSON_OBJECT+="\"$KEY\": \"$VALUE\", "
done

# Remove the trailing comma and space
JSON_OBJECT="${JSON_OBJECT%, *} }"

# Save the JSON object to a file
echo "$JSON_OBJECT" > secret.json
