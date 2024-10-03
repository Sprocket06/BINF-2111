#!/bin/bash

counter=0
quote="This script will run again"

while [ $counter -lt 10 ]; do
	echo $quote
	quote=$quote" and again"
	counter=$(( $counter+1 ))
done

echo "until it is done"
