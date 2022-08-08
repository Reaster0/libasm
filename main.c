#include "libasm.h"
#include <stdio.h>

extern int ft_strlen(char *str);

int main(){
	char *str = "Hello World";
	printf("%d\n", ft_strlen(str));
	return (0);
}