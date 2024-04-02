echo "Enter the directory path:"
read directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory not found!"
    exit 1
fi

# Count files and directories
file_count=$(find "$directory" -maxdepth 1 -type f | wc -l)
directory_count=$(find "$directory" -maxdepth 1 -type d | wc -l)

echo "Number of files in $directory: $file_count"
echo "Number of subdirectories in $directory: $directory_count"

