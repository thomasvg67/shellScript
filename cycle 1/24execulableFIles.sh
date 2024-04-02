# Check if files in the current directory are executable, and if not, make them executable
for file in *; do
    if [ -f "$file" ] && [ ! -x "$file" ]; then
        chmod +x "$file"
        echo "Made $file executable."
    fi
done
