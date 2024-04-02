# Check if two filenames are provided as arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

# Check if the files exist
if [ ! -f "$1" ]; then
    echo "$1 does not exist or is not a regular file"
    exit 1
fi

if [ ! -f "$2" ]; then
    echo "$2 does not exist or is not a regular file"
    exit 1
fi

# Compare the contents of the two files
if cmp -s "$1" "$2"; then
    echo "Files have the same contents."
    echo "Deleting $2..."
    rm "$2"
else
    echo "Files have different contents."
fi
