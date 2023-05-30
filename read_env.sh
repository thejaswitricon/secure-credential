#!/bin/bash

# View the secrets context and write it to a JSON file
echo "${{ toJson(secrets) }}" > secrets.json

# Read the secrets from the JSON file
secrets=$(cat secrets.json)

# Extract the secret keys starting with "__" and remove the prefix
extracted_secrets=$(echo "$secrets" | jq 'with_entries(select(.key | startswith("__"))) | with_entries(.key |= ltrimstr("__"))')

# Output the extracted secrets as JSON
echo "$extracted_secrets"



# #!/bin/bash

# # Read the secrets from the JSON file
# secrets=$(cat secrets.json)

# # Extract the secret keys starting with "__" and remove the prefix
# extracted_secrets=$(echo "$secrets" | jq 'with_entries(select(.key | startswith("__"))) | with_entries(.key |= ltrimstr("__"))')

# # Output the extracted secrets as JSON
# echo "$extracted_secrets"
