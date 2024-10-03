#!/bin/bash

for filepath in ./*.fasta; do
	echo $filepath
	grep "^>" $filepath
done
