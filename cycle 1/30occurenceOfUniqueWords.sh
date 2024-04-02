echo "Enter the filename:"
read filename

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found!"
    exit 1
fi

# Use awk to extract words, sort them, and count occurrences
unique_words=$(awk '{ for (i=1; i<=NF; i++) print $i }' "$filename" | sort | uniq -c)

# Print the unique words and their occurrences
echo "Unique words and their occurrences in $filename:"
echo "$unique_words"
