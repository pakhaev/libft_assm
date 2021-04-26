# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rvoltigo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/20 17:38:25 by rvoltigo          #+#    #+#              #
#    Updated: 2021/01/21 17:29:55 by rvoltigo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all clean fclean re

NAME = libasm.a
CC = gcc
FLAGS = -f macho64

SRC = 	ft_read.s\
	ft_write.s\
	ft_strlen.s\
	ft_strcmp.s\
	ft_strcpy.s\
	ft_strdup.s\

OBJ = $(SRC:.s=.o)
%.o: %.s
	nasm $(FLAGS) $< -o $@

all: $(NAME)

$(NAME) : $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME) && $(CC) main.c -o asm $(NAME) && echo > test.txt "Hello, world" && touch write.txt

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)
	@$(RM) asm
	@$(RM) test.txt
	@$(RM) write.txt

re: fclean all

compile: 
	$(RM) asm
	$(CC) main.c -o asm $(NAME)




