#!/bin/bash

# Prompt the user to enter numbers
echo "Enter numbers (separated by spaces):"
read -a numbers

# Initialize variables for the highest and second highest numbers
highest=${numbers[0]}
second_highest=${numbers[0]}

# Loop through the numbers array to find the highest and second highest numbers
for num in "${numbers[@]}"; do
    if ((num > highest)); then
        second_highest=$highest
        highest=$num
    elif ((num > second_highest && num != highest)); then
        second_highest=$num
    fi
done

# Display the second highest number
echo "Second highest number: $second_highest"
