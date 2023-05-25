#!/bin/bash

# Start with an empty JSON object
echo "{"

# Loop through each secret and append it to the JSON object
first=true
for secret_name in $(env | grep -oP "^__\K.*"); do
  value=$(printenv "$secret_name")  # Fetch the secret value dynamically using the secret name

  # Remove the "__" prefix from the secret name
  secret_name=${secret_name/#__/}

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
