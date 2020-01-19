# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 16:19:49 by frlindh           #+#    #+#              #
#    Updated: 2020/01/19 22:18:03 by frlindh          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS = ft_read.s ft_strcpy.s ft_strcmp.s ft_strlen.s ft_strdup.s ft_write.s ft_read.s
OBJS = $(patsubst %.s, %.o, $(SRCS))
NASM = nasm

.PHONY: all clean fclean re test

all: $(NAME)

test: $(OBJS)
	gcc main.c ft_strlen.o ft_strcpy.o ft_strcmp.o -o test

$(NAME): $(OBJS)
	ar rcs $@ $^

%.o: %.s
	nasm -f macho64 -o $@ $<

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
