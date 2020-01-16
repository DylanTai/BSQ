# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: minhnguy <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/08/26 14:32:46 by minhnguy          #+#    #+#              #
#    Updated: 2019/08/28 21:05:08 by dtai             ###   ########.fr        #
#    Updated: 2019/08/26 19:42:23 by dtai             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = bsq
FLAGS = -Wall -Wextra -Werror
INCLUDES = includes/
SRCS = srcs/main.c srcs/find_bsq.c srcs/helper_bsq.c srcs/valid.c \
	   srcs/small_bsq.c srcs/read_stdin.c
OBJECTS = main.o find_bsq.o helper_bsq.o valid.o small_bsq.o read_stdin.o

all: $(NAME)

$(NAME): $(OBJECTS)
	gcc $(FLAGS) $(OBJECTS) -o $(NAME) -I $(INCLUDES)

$(OBJECTS).o:
	gcc $(FLAGS) -c $(SRCS) -I $(INCLUDES)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
