#!/bin/bash

echo "#  lab 4 part 1"

v1='Methionine'
v2='Leucine'
v3='Cysteine'
v4='Alanine'
v5='Valine'
together=$v1+$v2+$v3+$v4+$v5

printf "%s\n%s\n%s\n%s\n%s\nLength of all together: %d\n" $v1 $v2 $v3 $v4 $v5 ${#together}

echo "#  lab 4 part 2"

start_codon="ATG"
stop_codons=("TAA" "TAG" "TGA")
start_count=$(grep -o "^${start_codon}" 'example2.fasta'| wc -l)
printf "start codon count is: %d\n" $start_count

stop_count=0
for codon in ${stop_codons[@]}
do
	out=$(grep -o "${codon}$" 'example2.fasta' | wc -l)
	stop_count=$(($stop_count+$out))
done

printf "stop codon count is: %d\n" $stop_count

echo "#  lab 4 part 3"

printf "Username: %s\nCurrent dir: %s\n" $(whoami) $(pwd) 
printf "Root Dir: %s\n" $ROOT
printf "Current Date: %s\n" "$(date)"

echo "#  lab 4 part 4"

echo "gunzip file.gz uncompresses a file"
echo "tar -zxvf file.tar.gz uncompresses a file"
echo "zip file.zip file.txt file1.txt compresses the two input files"
echo "tar -zcvf file.tar.gz file.txt file1.txt compresses the two input files"

echo "#  lab 4 part 5"

amino_acids=('Methionine' 'Leucine' 'Cysteine' 'Alanine' 'Valine' 'Tyrosine' 'Proline')
#removing Alanine
amino_acids=(${amino_acids[@]/Alanine})
echo ${amino_acids[@]}
#Print from Cisteine to Tyrosine 
echo ${amino_acids[@]:2:3}
#Adding Histidine
amino_acids+=('Histidine')
echo ${amino_acids[@]}

echo "#  lab 4 part 6"

echo "the command to count how many times the name abdul is to the left of the name chi in doppelganger_names.txt would be grep -o 'abdul.*chi' doppelganger_names.txt | wc -l"

printf "The count is: %d\n" $(grep -o 'abdul.*chi' doppelganger_names.txt | wc -l)

echo "#  lab 4 part 7"
echo "a legal variable name would be my_variable"
echo "an illegal variable name would be 1two:three"

echo "#  lab 4 part 8"
echo "bash myscript.sh"

echo "#  lab 4 bonus I"
amino_acids=('Methionine' 'Leucine' 'Cysteine' 'Alanine' 'Valine' 'Tyrosine' 'Proline')
echo "the acids in the array are:"
for acid in ${amino_acids[@]}
do
	echo "${acid}"
done

