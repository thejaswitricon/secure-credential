#!/bin/bash

# Filter secrets based on keys starting with "__"
secret_names=()
while IFS='=' read -r key _; do
  if [[ $key == __* ]]; then
    secret_names+=("${key}")
  fi
done < <(env)

# Retrieve secrets based on the filtered names
for secret_name in "${secret_names[@]}"; do
  secret_value="${!secret_name}"
  echo "Secret $secret_name: $secret_value"
done



# #!/bin/bash

# # Read the secrets from the JSON file
# secrets=$(cat secrets.json)

# # Extract the secret keys starting with "__" and remove the prefix
# extracted_secrets=$(echo "$secrets" | jq 'with_entries(select(.key | startswith("__"))) | with_entries(.key |= ltrimstr("__"))')

# # Output the extracted secrets as JSON
# echo "$extracted_secrets"
