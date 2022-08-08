SRCS		:= ft_strcpy.s \
				ft_strlen.s

OBJS		:= $(SRCS:.s=.o)
NAME		:= libasm.a

all:		$(NAME)

$(NAME):	$(OBJS)
			# name -felf64 -o $(NAME) $(OBJS)
			ar -rcs $(NAME) $(OBJS)

$(OBJS): $(SRCS)
			nasm -felf64 -s -o $@ $<

main:
			

clean:
			rm $(OBJS)
		
fclean:		clean
			rm $(NAME)

re:			fclean all