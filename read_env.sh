#!/bin/bash

# Start with an empty JSON object
echo "{"

# Loop through each secret and append it to the JSON object
first=true
for secret_name in $(env | grep -oP "^secrets\.\K.*|^__\K.*"); do
  value=$(printenv "$secret_name")  # Fetch the secret value dynamically using the secret name

  # Append the secret to the JSON object
  if [ "$first" = true ]; then
    first=false
  else
    echo ","
  fi
  echo -n "\"$secret_name\": \"$value\""
done

# Close the JSON object
echo "}"
