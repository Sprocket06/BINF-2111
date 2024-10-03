#!/bin/bash

infile=$1
sed 's/\t/,/g' $infile
echo "\n"

# Usage:
# chmod +x q2_tsv_to_csv.sh
# ./q2_tsv_to_csv.sh path_to_tsv_file
