#include "str_len.h"

int str_len(char * str)
{
int i = 0;

while (str[i] != '\0')
{
i = i + 1;
}
return i;
}
