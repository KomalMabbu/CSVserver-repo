#!/bin/bash

# Ensure there are exactly two arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_number> <end_number>"
    exit 1
fi

# Get the starting and ending values from arguments
start=$1
end=$2

# Ensure the start value is less than or equal to the end value
if [ "$start" -gt "$end" ]; then
    echo "Error: start_number must be less than or equal to end_number."
    exit 1
fi

# Create the inputFile with the required entries
> inputFile  # Ensure inputFile is empty before writing

for ((i=start; i<=end; i++)); do
    # Generate a random number (between 1 and 500 for example)
    random_number=$((RANDOM % 500 + 1))
    
    # Append the current index and the random number to the file
    echo "$i, $random_number" >> inputFile
done

echo "inputFile has been generated with entries from $start to $end."
