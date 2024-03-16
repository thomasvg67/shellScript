#!/bin/bash

# Function to calculate the sum of digits
sum_of_digits() {
    local num=$1
    local sum=0

    # Loop through each digit of the number
    while [ $num -gt 0 ]; do
        # Extract the last digit of the number
        digit=$(( num % 10 ))
        # Add the digit to the sum
        sum=$(( sum + digit ))
        # Remove the last digit from the number
        num=$(( num / 10 ))
    done

    echo $sum
}

# Main program
echo "Enter a number:"
read number

# Call the function to calculate the sum of digits
result=$(sum_of_digits $number)

echo "Sum of digits of $number is: $result"

