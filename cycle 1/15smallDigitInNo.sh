#!/bin/bash

# Function to find the smallest digit
find_smallest_digit() {
    local number=$1
    local smallest=${number:0:1}  # Initialize smallest with the first digit of the number

    # Loop through each digit of the number
    for (( i = 1; i < ${#number}; i++ )); do
        digit=${number:$i:1}
        if (( digit < smallest )); then
            smallest=$digit
        fi
    done

    echo "Smallest digit in $number is $smallest"
}

# Main program
echo "Enter a number:"
read num

# Call the function to find the smallest digit
find_smallest_digit "$num"
