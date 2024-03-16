#!/bin/bash

# Function to reverse a number
reverse_number() {
    local num=$1
    local reversed=""

    # Loop through each digit of the number
    while [ $num -gt 0 ]; do
        # Extract the last digit of the number
        digit=$(( num % 10 ))
        # Append the digit to the reversed number
        reversed="${reversed}${digit}"
        # Remove the last digit from the number
        num=$(( num / 10 ))
    done

    echo $reversed
}

# Main program
echo "Enter a number:"
read number

# Call the function to reverse the number
reversed=$(reverse_number $number)

echo "Reverse of $number is: $reversed"

