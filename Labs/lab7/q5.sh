#!/bin/bash

add_numbers () {
	sum=$(( $1 + $2 ))
	printf "The first number: %d\nThe second number: %d\nThe sum: %d\n" $1 $2 $sum >$(tty)
	return 0
}

add_numbers 2 3

add_numbers 4 5

add_numbers 12 2
