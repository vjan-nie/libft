# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vjan-nie <vjan-nie@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/17 12:24:16 by vjan-nie          #+#    #+#              #
#    Updated: 2026/02/01 18:00:48 by vjan-nie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libft.a

SRC			=	src/ft_atoi.c\
				src/ft_split.c\
				src/ft_bzero.c\
				src/ft_strchr.c\
				src/ft_calloc.c\
				src/ft_strdup.c\
				src/ft_isalnum.c\
				src/ft_isalpha.c\
				src/ft_strjoin.c\
				src/ft_isascii.c\
				src/ft_strlcat.c\
				src/ft_isdigit.c\
				src/ft_strlcpy.c\
				src/ft_isprint.c\
				src/ft_strlen.c\
				src/ft_itoa.c\
				src/ft_strmapi.c\
				src/ft_memchr.c\
				src/ft_strncmp.c\
				src/ft_memcmp.c\
				src/ft_strnstr.c\
				src/ft_memcpy.c\
				src/ft_strrchr.c\
				src/ft_memmove.c\
				src/ft_strtrim.c\
				src/ft_memset.c\
				src/ft_substr.c\
				src/ft_putchar_fd.c\
				src/ft_tolower.c\
				src/ft_putendl_fd.c\
				src/ft_toupper.c\
				src/ft_putnbr_fd.c\
				src/ft_putstr_fd.c\
				src/ft_striteri.c\
				src/ft_lstnew_bonus.c\
				src/ft_lstadd_front_bonus.c\
				src/ft_lstsize_bonus.c\
				src/ft_lstlast_bonus.c\
				src/ft_lstadd_back_bonus.c\
				src/ft_lstdelone_bonus.c\
				src/ft_lstclear_bonus.c\
				src/ft_lstiter_bonus.c\
				src/ft_lstmap_bonus.c

FT_PRINTF	=	ft_printf/ft_printf.c\
				ft_printf/len_int_nbr.c\
				ft_printf/write_char.c\
				ft_printf/write_hex.c\
				ft_printf/write_int_nbr.c\
				ft_printf/write_ptr.c\
				ft_printf/write_str.c\
				ft_printf/write_uns_int_nbr.c

GNL			=	get_next_line/get_next_line_bonus.c

CC			= 	cc
CFLAGS		= 	-Wall -Wextra -Werror
INCLUDE_DIR = 	include
OBJ			= 	$(SRC:.c=.o) $(FT_PRINTF:.c=.o) $(GNL:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
