echo "Enter the number of terms for Fibonacci series:"
read n

a=0
b=1

echo "Fibonacci series up to $n terms:"
echo "$a"
echo "$b"

i=2
while [ $i -lt $n ]
do
    c=$((a + b))
    echo "$c"
    a=$b
    b=$c
    i=$((i + 1))
done
