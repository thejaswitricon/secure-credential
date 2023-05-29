#!/bin/bash

# Read the secrets.json file
secrets_json=$(cat secrets.json)

# Iterate over each key-value pair in the secrets JSON
keys=$(echo "$secrets_json" | jq -r 'keys[]')
for key in $keys; do
  value=$(echo "$secrets_json" | jq -r ".$key")
  # Set the secret as an environment variable
  export "$key"="$value"
done

# Your remaining script code goes here




# #!/bin/bash

# # Read the secrets from the JSON file
# secrets=$(cat secrets.json)

# # Extract the secret keys starting with "__" and remove the prefix
# extracted_secrets=$(echo "$secrets" | jq 'with_entries(select(.key | startswith("__"))) | with_entries(.key |= ltrimstr("__"))')

# # Output the extracted secrets as JSON
# echo "$extracted_secrets"
