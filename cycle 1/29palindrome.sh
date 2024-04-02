
echo "Enter a string:"
read string

# Function to check if a string is palindrome
is_palindrome() {
    local str=$1
    local reversed_str=""
    
    # Loop through the characters of the string in reverse order and concatenate them
    for (( i=${#str}-1; i>=0; i-- )); do
        reversed_str="$reversed_str${str:$i:1}"
    done
    
    # Check if the reversed string is equal to the original string
    if [ "$str" == "$reversed_str" ]; then
        echo "The string \"$str\" is a palindrome."
    else
        echo "The string \"$str\" is not a palindrome."
    fi
}

is_palindrome "$string"
