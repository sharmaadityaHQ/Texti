output=$(node readText.js)
echo "$output" > temp.txt
input="./temp.txt"
while IFS= read -r line
do
  echo "$line"
done < "$input"