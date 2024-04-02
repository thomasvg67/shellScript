echo "Enter your password:"
read password

# Check if password length is at least 8 characters
if [ ${#password} -lt 8 ]; then
    echo "Password must be at least 8 characters long."
    exit 1
fi

# Check if password contains both alphabet and number
if ! [[ "$password" =~ [[:alpha:]] && "$password" =~ [[:digit:]] ]]; then
    echo "Password must contain both alphabet and number."
    exit 1
fi

# Check if password contains both lowercase and uppercase letters
if ! [[ "$password" =~ [[:lower:]] && "$password" =~ [[:upper:]] ]]; then
    echo "Password must contain both lowercase and uppercase letters."
    exit 1
fi

echo "Password strength is valid."
