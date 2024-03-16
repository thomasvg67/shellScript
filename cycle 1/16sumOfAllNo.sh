#!/bin/bash

# Initialize sum variable
sum=0

# Loop through numbers from 50 to 100
for ((i = 50; i <= 100; i++)); do
    # Check if the number is divisible by 3 and not divisible by 5
    if ((i % 3 == 0)) && ((i % 5 != 0)); then
        # Add the number to the sum
        sum=$((sum + i))
    fi
done

# Display the sum
echo "Sum of numbers between 50 and 100 which are divisible by 3 and not divisible by 5 is: $sum"

