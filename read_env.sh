#!/bin/bash

__SECRET="$1"

# Generate a JSON-encoded map of string keys and string values
json_output="{ \"__SECRET\": \"$__SECRET\" }"

echo "$json_output"
