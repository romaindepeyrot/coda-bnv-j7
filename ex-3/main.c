#include "print_tab.h"
#include <stdio.h>

int main(int argc, char **argv)
{
	int len = argc;
	printf("%d\n", len);
    print_tab(argv);
    return 0;
}