#include "libasm.h"
#include <stdio.h>
#include <string.h>

int main(){

	printf("\nft_strlen tests:\n");

	char *str = "Hello World!";
	printf("%ld\n", ft_strlen(str));
	printf("%ld\n", strlen(str));


	printf("\nft_strcpy tests:\n");

	const char *str1 = "Hello";
	char str2[20];
	printf("%s\n", ft_strcpy(str2, str1));
	printf("%s\n", str2);

	printf("\nstrcmp tests:\n");

	printf("%d\n", ft_strcmp("756", "656"));
	printf("%d\n", strcmp("756", "656"));
	printf("%d\n", ft_strcmp("Hello", "Hello"));
	printf("%d\n", strcmp("Hello", "Hello"));
	printf("%d\n", ft_strcmp("Hello", "Hello World!"));
	printf("%d\n", strcmp("Hello", "Hello World!"));


	printf("\nft_write tests:\n");

	printf("%ld\n", ft_write(1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;
	printf("%ld\n", write(1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;

	printf("%ld\n", ft_write(-1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;
	printf("%ld\n", write(-1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;

	printf("%ld\n", ft_write(1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;
	printf("%ld\n", write(1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;

	printf("\nft_read tests:\n");

	printf("%ld\n", ft_read(-1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;
	printf("%ld\n", read(-1, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;

	printf("%ld\n", ft_read(0, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;
	printf("%ld\n", read(0, "Hello World!\n", 13));
	printf("errno: %d\n", errno);
	errno = 0;


	return (0);
}