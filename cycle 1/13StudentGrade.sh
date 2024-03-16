calculate_grade() {
    local percentage=$1
    local grade=""

    if ((percentage >= 90)); then
        grade="A"
    elif ((percentage >= 80)); then
        grade="B"
    elif ((percentage >= 70)); then
        grade="C"
    elif ((percentage >= 60)); then
        grade="D"
    else
        grade="F"
    fi

    echo "$grade"
}

# Main program
echo "Enter student's name:"
read name

echo "Enter student's marks:"
read marks

echo "Enter total marks:"
read total_marks

# Calculate percentage
percentage=$(( (marks * 100) / total_marks ))

# Calculate grade
grade=$(calculate_grade $percentage)

# Display result
echo "Student Name: $name"
echo "Percentage: $percentage%"
echo "Grade: $grade"
