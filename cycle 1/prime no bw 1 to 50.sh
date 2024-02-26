#Write a Shell program to generate prime numbers between 1 and 50.

#!/bin/bash

generate_primes() {
    for (( num=2; num<=50; num++ ))
    do
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
            echo $num
        fi
    done
}

# Main program
echo "Prime numbers between 1 and 50 are:"
generate_primes
