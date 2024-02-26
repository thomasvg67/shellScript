#Write a Shell program to check the given number is even or odd.
#!/bin/bash

echo "Enter a number:"
read num

if [ $((num % 2)) -eq 0 ]; then
    echo "$num is even."
else
    echo "$num is odd."
fi