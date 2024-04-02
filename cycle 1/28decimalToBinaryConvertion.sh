echo "Enter a decimal number:"
read decimal

# Function to convert decimal to binary
decimal_to_binary() {
    local num=$1
    local result=""
    
    while [ $num -gt 0 ]; do
        remainder=$((num % 2))
        result="$remainder$result"
        num=$((num / 2))
    done
    
    echo "$result"
}

binary=$(decimal_to_binary $decimal)
echo "Binary representation of $decimal is: $binary"
