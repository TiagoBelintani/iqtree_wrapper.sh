#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_directory output_directory"
    exit 1
fi

# Input directory containing FASTA files
input_directory="$1"

# Output directory for saving IQ-TREE results
output_directory="$2"

# Number of threads to be used by IQ-TREE
num_threads=20

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Loop over the .fa files in the input directory
for file in "$input_directory"/*.fa; do
    # Get the file name without the extension
    name_without_extension=$(basename "$file" .fa)

    # IQ-TREE command with bootstrap
    iqtree -s "$file" -nt "$num_threads" -b 1000 -pre "$output_directory/$name_without_extension"
done
