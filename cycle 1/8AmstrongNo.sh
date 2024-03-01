#Write a Shell program to check the given integer is Armstrong number or not.
#!/bin/bash

check_armstrong() {
    num=$1
    num_digits=${#num}
    sum=0
    temp=$num

    while [ $temp -gt 0 ]
    do
        digit=$(( $temp % 10 ))
        sum=$(( $sum + $digit ** $num_digits ))
        temp=$(( $temp / 10 ))
    done

    if [ $sum -eq $num ]; then
        echo "$num is an Armstrong number."
    else
        echo "$num is not an Armstrong number."
    fi
}

# Main program
read -p "Enter an integer: " number

check_armstrong $number
