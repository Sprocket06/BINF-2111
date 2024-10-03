#!/bin/bash

amino_acids=('Methionine' 'Leucine' 'Cysteine' 'Alanine' 'Valine' 'Tyrosine' 'Proline')

for acid in ${amino_acids[@]}; do
	length=${#acid}
	printf "acid: %s\nlength: %d\n" $acid $length
done
