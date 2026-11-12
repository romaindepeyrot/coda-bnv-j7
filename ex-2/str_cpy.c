#include <stdlib.h>
#include "str_cpy.h"
#include "str_len.h"

char * str_cpy(char * str)
{
	int len = str_len(str);
	char * copy = malloc((len + 1) * sizeof(*copy));
	int i = 0;

	if (copy == NULL)
		return NULL;
	while (i < len)
	{
		copy[i] = str[i];
		i = i + 1;
	}
	copy[len] = '\0';
	return copy;
}