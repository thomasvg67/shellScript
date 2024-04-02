
echo "Enter the starting number:"
read start

echo "Enter the ending number:"
read end

echo "Enter the step size:"
read step

if [ $start -gt $end ]; then
    echo "Starting number should be less than or equal to the ending number."
    exit 1
fi

current=$start

while [ $current -le $end ]; do
    echo $current
    current=$((current + step))
done
