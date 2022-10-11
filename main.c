#include "libasm.h"
#include <stdio.h>
#include <string.h>

int main(){
	char *str = "Hello World!";
	printf("%ld\n", ft_strlen(str));
	printf("%ld\n", strlen(str));

	const char *str1 = "Hello";
	char str2[20];
	printf("%s\n", ft_strcpy(str2, str1));
	return (0);
}