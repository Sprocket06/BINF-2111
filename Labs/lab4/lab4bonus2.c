#include <stdio.h>

int main()
{
	char* amino_acids[7] = {"Methionine", "Leucine", "Cysteine", "Alanine", "Valine", "Tyrosine", "Proline"};
	printf("The amino acids in the array are:\n");
	for(int i = 0; i < 7;i++)
	{
		printf("%s\n", amino_acids[i]);
	}
}

