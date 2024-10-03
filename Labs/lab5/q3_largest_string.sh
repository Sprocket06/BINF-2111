#!/bin/bash

strings=("This is a string" 'Hello' "Strings are very cool")
max=$(echo ${strings[0]} | wc -m)
max_word=${strings[0]}
for word in "${strings[@]}"; do
	current_len=$(echo $word | wc -m)
	if [[ $current_len -gt $max ]]; then
		max=$current_len
		max_word=$word
	fi
done

echo "The longest string is: $max_word"
