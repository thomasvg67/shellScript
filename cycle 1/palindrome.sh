#Write a Shell program to check the given string is palindrome or not.
#!/bin/bash

echo "Enter a string:"
read string

# Remove spaces and convert to lowercase
clean_string=$(echo "$string" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')

# Reverse the string
reverse_string=$(echo "$clean_string" | rev)

# Check if the original string and its reverse are the same
if [ "$clean_string" = "$reverse_string" ]; then
    echo "$string is a palindrome."
else
    echo "$string is not a palindrome."
fi
