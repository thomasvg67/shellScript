#Write a Shell program to find the roots of a quadratic equation.
#!/bin/bash

echo "Enter the coefficients of the quadratic equation (ax^2 + bx + c):"
echo "Enter coefficient a:"
read a
echo "Enter coefficient b:"
read b
echo "Enter coefficient c:"
read c

# Calculate discriminant
discriminant=$((b * b - 4 * a * c))

# Check if the discriminant is positive, negative, or zero
if [ $discriminant -gt 0 ]; then
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2 * $a)" | bc)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2 * $a)" | bc)
    echo "Roots are real and distinct."
    echo "Root 1 = $root1"
    echo "Root 2 = $root2"
elif [ $discriminant -eq 0 ]; then
    root=$(echo "scale=2; -($b) / (2 * $a)" | bc)
    echo "Roots are real and equal."
    echo "Root = $root"
else
    real_part=$(echo "scale=2; -($b) / (2 * $a)" | bc)
    imaginary_part=$(echo "scale=2; sqrt(-$discriminant) / (2 * $a)" | bc)
    echo "Roots are complex."
    echo "Root 1 = $real_part + $imaginary_part i"
    echo "Root 2 = $real_part - $imaginary_part i"
fi
