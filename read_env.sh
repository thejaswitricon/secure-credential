#!/bin/bash

secrets_file=$1

# Read the secrets file and export the variables
export $(cat "$secrets_file")

# Access the secrets individually (example)
echo "The value of __SECRET1 is: $__SECRET1"
echo "The value of __SECRET2 is: $__SECRET2"
