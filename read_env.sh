#!/bin/bash

# Fetch the secrets from GitHub Secrets
API_URL="https://api.github.com/repos/thejaswitricon/secure-credential/actions/secrets"
REPO_OWNER="thejaswitricon"
REPO_NAME="secure-credential"
GITHUB_TOKEN="GITHUB_SECRET"

secret_value=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
  "$API_URL/repos/thejaswitricon/secure-credential/actions/secrets/__SECRET" | \
  jq -r '.secret.value')

# Output the secrets as JSON
echo '{ "my_secret": "'"$secret_value"'"}'






# #!/bin/bash

# # Create a JSON object with the secret key-value pair
# JSON_OBJECT="{ \"$1\": \"$2\" }"

# # Output the JSON object
# echo "$JSON_OBJECT"
