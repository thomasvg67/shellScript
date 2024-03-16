#!/bin/bash

# Function to calculate the factorial of a number
calculate_factorial() {
    local num=$1
    local factorial=1

    # Iterate from 1 to num and multiply each number to calculate factorial
    for ((i = 1; i <= num; i++)); do
        factorial=$((factorial * i))
    done

    echo $factorial
}

# Main program
echo "Enter a number:"
read number

# Call the function to calculate the factorial
result=$(calculate_factorial $number)

echo "Factorial of $number is: $result"

