#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start> <end>"
    exit 1
fi

start=$1
end=$2

if [ "$end" -lt "$start" ]; then
    echo "Error: end value must be greater than or equal to start value."
    exit 1
fi

output_file="inputFile"

> "$output_file"

for (( i=start; i<=end; i++ )); do
    random_number=$((RANDOM % 100 + 1))

    echo "$i, $random_number" >> "$output_file"
done

echo "CSV file '$output_file' has been generated."
