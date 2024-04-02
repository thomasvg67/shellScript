echo "Enter the strings (separated by spaces):"
read -a strings

# Reverse the list of strings
reversed_list=()
for ((i=${#strings[@]}-1; i>=0; i--)); do
    reversed_list+=("${strings[$i]}")
done

# Reverse each string further
for ((i=0; i<${#reversed_list[@]}; i++)); do
    reversed_string=""
    for ((j=${#reversed_list[i]}-1; j>=0; j--)); do
        reversed_string="${reversed_string}${reversed_list[i]:$j:1}"
    done
    reversed_list[$i]="$reversed_string"
done

echo "Reversed list of strings with each string further reversed:"
echo "${reversed_list[@]}"
