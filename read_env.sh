#!/bin/bash

# Fetch the secret value from GitHub using an appropriate method
# and output it to stdout
secret_value=$(gh secret get secure-credential --secret __SECRET --json value --jq .value)

echo "$secret_value"




# #!/bin/bash

# # Create a JSON object with the secret key-value pair
# JSON_OBJECT="{ \"$1\": \"$2\" }"

# # Output the JSON object
# echo "$JSON_OBJECT"
