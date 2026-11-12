#include <stdio.h>
#include "print_tab.h"

void print_tab(char ** tab)
{
	int i = 0;

	while (tab[i] != NULL)
	{
		printf("%s\n", tab[i]);
		i = i + 1;
	}
}