echo "Enter the number of rows for Pascal's triangle:"
read rows

for ((i=0; i<rows; i++))
do
    for ((j=rows; j>i; j--))
    do
        echo -n " "
    done

    C=1

    for ((k=0; k<=i; k++))
    do
        echo -n " $C"
        C=$((C * (i - k) / (k + 1)))
    done

    echo
done

