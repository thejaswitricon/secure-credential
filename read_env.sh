#!/bin/bash

# Read the JSON input from command-line argument
json_input=$1

# Extract the secrets starting with "__" and remove the prefix
extracted_secrets=$(echo "$json_input" | jq 'with_entries(select(.key | startswith("__"))) | with_entries(.key |= ltrimstr("__"))')

# Output the extracted secrets as JSON
echo "$extracted_secrets"



# #!/bin/bash

# # Read the secrets from the JSON file
# secrets=$(cat secrets.json)

# # Extract the secret keys starting with "__" and remove the prefix
# extracted_secrets=$(echo "$secrets" | jq 'with_entries(select(.key | startswith("__"))) | with_entries(.key |= ltrimstr("__"))')

# # Output the extracted secrets as JSON
# echo "$extracted_secrets"
