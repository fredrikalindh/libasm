# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/19 16:19:49 by frlindh           #+#    #+#              #
#    Updated: 2020/01/21 16:51:17 by frlindh          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS = ft_read.s ft_strcpy.s ft_strcmp.s ft_strlen.s ft_strdup.s ft_write.s
SRCS_BONUS = ft_read.s ft_strcpy.s ft_strcmp.s ft_strlen.s ft_strdup.s ft_write.s ft_list_size_bonus.s ft_list_push_front_bonus.s
OBJS = $(patsubst %.s, %.o, $(SRCS))
OBJS_BONUS = $(patsubst %.s, %.o, $(SRCS_BONUS))
NASM = nasm

.PHONY: all clean fclean re test

all: $(NAME)

test: bonus
	gcc -Wall -Wextra -Werror main.c $(NAME) -o test

test2: bonus
	gcc -Wall -Wextra -Werror main1.c $(NAME) -o test2

bonus: $(OBJS_BONUS)
	ar rcs $(NAME) $^

$(NAME): $(OBJS)
	ar rcs $@ $^

%.o: %.s
	nasm -f macho64 -o $@ $<

clean:
	rm -f $(OBJS_BONUS)

fclean: clean
	rm -f $(NAME)
	rm -f test
	rm -f test2

re: fclean all
