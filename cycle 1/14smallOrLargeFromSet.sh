#!/bin/bash

# Prompt the user to enter numbers
echo "Enter numbers (separated by spaces):"
read -a numbers

# Initialize variables for smallest and largest numbers
smallest=${numbers[0]}
largest=${numbers[0]}

# Loop through the numbers array to find the smallest and largest numbers
for num in "${numbers[@]}"; do
    if ((num < smallest)); then
        smallest=$num
    fi

    if ((num > largest)); then
        largest=$num
    fi
done

# Display the smallest and largest numbers
echo "Smallest number: $smallest"
echo "Largest number: $largest"
