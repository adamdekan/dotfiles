#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <variable_name> <new_value>"
  exit 1
fi

variable_name="$1"
new_value="$2"
file_path=~/dotfiles/.env.hack

# Replace the variable's value in the file
sed -i "s/export $variable_name=.*/export $variable_name=$new_value/" "$file_path"

# Source the file to apply the changes to the current environment
source "$file_path"

echo "$variable_name value updated to $new_value"

