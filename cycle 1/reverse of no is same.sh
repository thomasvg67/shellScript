#Write a Shell program to check the given number and its reverse are same.
#!/bin/bash

echo "Enter a number:"
read number

reverse=0
temp=$number

while [ $temp -gt 0 ]
do
    remainder=$((temp % 10))
    reverse=$((reverse * 10 + remainder))
    temp=$((temp / 10))
done

if [ $number -eq $reverse ]; then
    echo "$number is same to its reverse."
else
    echo "$number is not same to its reverse."
fi
