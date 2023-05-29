#!/bin/bash

SECRET_KEY="$1"
SECRET_VALUE="$2"

# Create a JSON object with the secret key-value pair
json="{ \"$SECRET_KEY\": \"$SECRET_VALUE\" }"

# Output the JSON object
echo "$json"





# #!/bin/bash

# # Create a JSON object with the secret key-value pair
# JSON_OBJECT="{ \"$1\": \"$2\" }"

# # Output the JSON object
# echo "$JSON_OBJECT"
