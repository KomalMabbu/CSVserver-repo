#!/bin/bash

# Ensure the script is called with two arguments (start and end)
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start> <end>"
    exit 1
fi

# Assign arguments to variables
start=$1
end=$2

# Ensure the end value is greater than or equal to the start value
if [ "$end" -lt "$start" ]; then
    echo "Error: end value must be greater than or equal to start value."
    exit 1
fi

# Output file
output_file="inputFile"

# Create or overwrite the file
> "$output_file"

# Loop through the range from start to end (inclusive)
for (( i=start; i<=end; i++ )); do
    # Generate a random number between 1 and 100
    random_number=$((RANDOM % 100 + 1))

    # Append the formatted entry to the file
    echo "$i, $random_number" >> "$output_file"
done

# Print success message
echo "CSV file '$output_file' has been generated."
