SRCS		:= ft_strcpy.s \
				ft_strlen.s

OBJS		:= $(SRCS:.s=.o)
NAME		:= libasm.a

all:		$(NAME)

$(NAME):	$(OBJS)
			ar -rcs $(NAME) $(OBJS)

%.o:		%.s
			nasm -f elf64 $<

main:
			gcc -Wall -Wextra -Werror -g main.c $(NAME)
			./a.out
			
clean:
			rm -f $(OBJS) 
			@echo "clean done"
		
fclean:		clean
			rm -f $(NAME)
			@echo "fclean done"

re:			fclean all