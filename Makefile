# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nde-chab <nde-chab@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/23 16:56:38 by nde-chab          #+#    #+#              #
#    Updated: 2024/05/23 18:26:34 by nde-chab         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

INCLUDES = -I .

FUNC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
		ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c \
		ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
		ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c

FUNCADDITIONAL =	ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
			ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
			ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS =	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
		ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

SRCS = $(FUNC) $(FUNCADDITIONAL)

SRCSALL = $(SRCS) $(BONUS)

OBJS = $(SRCS:.c=.o)

OBJSALL = $(SRCSALL:.c=.o)

%.o : %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@ 


$(NAME) : $(OBJS)
	ar -rsc $(NAME) $(OBJS)

all : $(NAME)

bonus : $(OBJSALL)
	ar -rsc $(NAME) $(OBJSALL)

clean : 
	rm -rf $(OBJSALL)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all bonus fclean re
