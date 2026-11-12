#include <stdlib.h>
#include "str_cpy.h"

char *str_cpy(char * str)
{
	char	*cpy;
	int		len;
	int 	i;
	
	len = str_len(str);
	cpy = malloc(sizeof(char) * (len + 1));
	if (cpy == NULL)
		return(NULL);
	i = 0;
	while (i < len)
	{
		cpy[i] = str[i];
		i++;
	}
	cpy[i] = '\0';
	return (cpy);
}