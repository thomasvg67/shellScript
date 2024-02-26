#Write a Shell program to check the given integer is prime or not.
#!/bin/bash

check_prime() {
    num=$1
    is_prime=1

    if [ $num -eq 1 ]; then
        is_prime=0
    fi

    for (( i=2; i*i<=$num; i++ ))
    do
        if [ $((num%i)) -eq 0 ]; then
            is_prime=0
            break
        fi
    done

    if [ $is_prime -eq 1 ]; then
        echo "$num is a prime number."
    else
        echo "$num is not a prime number."
    fi
}

# Main program
read -p "Enter an integer: " number

check_prime $number
