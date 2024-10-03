#!/bin/bash

infile=$1

while IFS= read -r line; do
	length=${#line}
	printf 'line: %s\n character count: %d\n' "$line" $length
done < "$infile"
