echo "Total count of the word 'Linux' in .txt files:"
grep -r -o -w -i "Linux" *.txt | wc -l
