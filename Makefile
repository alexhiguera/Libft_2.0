# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: columbux <columbux@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/21 12:51:23 by ahiguera          #+#    #+#              #
#    Updated: 2024/05/09 21:45:10 by columbux         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#████████████████████████████ Configuration ███████████████████████████████████#
NAME		= 	libft.a
CC			=	gcc
CFLAGS		= 	-c -Wall -Wextra -Werror
RM			=	rm -rf

#██████████████████████████████ Colors ████████████████████████████████████████#
DEF_COLOR 		=	\033[0;39m
GRAY 			=	\033[0;90m
RED 			=	\033[0;91m
GREEN 			=	\033[0;92m
YELLOW 			=	\033[0;93m
BLUE 			=	\033[0;94m
MAGENTA 		=	\033[0;95m
CYAN 			=	\033[0;96m
WHITE 			=	\033[0;97m
BLACK 			=	\033[0;99m
ORANGE 			=	\033[38;5;209m
DARK_GRAY 		=	\033[38;5;234m
MID_GRAY 		=	\033[38;5;245m
DARK_YELLOW 	=	\033[38;5;143m
DARK_GREEN 		=	\033[38;2;75;179;82m
BROWN 			=	\033[38;2;184;143;29m

#████████████████████████████ PATHS ███████████████████████████████████████████#
SRC-DIR		= 		./src/
TO-DIR		= 		$(SRC-DIR)ft_*to*/
IS-DIR		= 		$(SRC-DIR)ft_is/
MEM-DIR		= 		$(SRC-DIR)ft_mem/
FD-DIR		= 		$(SRC-DIR)ft_fd/
LST-DIR		= 		$(SRC-DIR)ft_lst/
STR-DIR		= 		$(SRC-DIR)ft_str/
PRINTF-DIR 	= 		$(SRC-DIR)printf/
GNL-DIR 	= 		$(SRC-DIR)get_next_line/

#████████████████████████████ SOURCES █████████████████████████████████████████#
SRC			=		$(TO-DIR)ft_atoi.c			\
					$(TO-DIR)ft_itoa.c			\
					$(TO-DIR)ft_toupper.c		\
					$(TO-DIR)ft_tolower.c		\
												\
					$(FD-DIR)ft_putchar_fd.c	\
					$(FD-DIR)ft_putendl_fd.c	\
					$(FD-DIR)ft_putnbr_fd.c		\
					$(FD-DIR)ft_putstr_fd.c		\
												\
					$(IS-DIR)ft_isalnum.c		\
					$(IS-DIR)ft_isascii.c		\
					$(IS-DIR)ft_isalpha.c		\
					$(IS-DIR)ft_isprint.c		\
					$(IS-DIR)ft_isdigit.c		\
					$(IS-DIR)ft_isspace.c		\
												\
					$(MEM-DIR)ft_memchr.c		\
					$(MEM-DIR)ft_memcmp.c		\
					$(MEM-DIR)ft_memcpy.c		\
					$(MEM-DIR)ft_memmove.c		\
					$(MEM-DIR)ft_memset.c		\
												\
					$(STR-DIR)ft_strchr.c		\
					$(STR-DIR)ft_strdup.c		\
					$(STR-DIR)ft_striteri.c		\
					$(STR-DIR)ft_strjoin.c		\
					$(STR-DIR)ft_strlcat.c		\
					$(STR-DIR)ft_strlcpy.c		\
					$(STR-DIR)ft_strlen.c		\
					$(STR-DIR)ft_strlin.c		\
					$(STR-DIR)ft_strmapi.c		\
					$(STR-DIR)ft_strncmp.c		\
					$(STR-DIR)ft_strnstr.c		\
					$(STR-DIR)ft_strrchr.c		\
					$(STR-DIR)ft_strtrim.c		\
					$(STR-DIR)ft_substr.c		\
												\
					$(SRC-DIR)ft_bzero.c		\
					$(SRC-DIR)ft_calloc.c		\
					$(SRC-DIR)ft_split.c		\
					$(SRC-DIR)ft_free.c			\
												\
				$(LST-DIR)ft_lstnew.c			\
				$(LST-DIR)ft_lstadd_front.c		\
 				$(LST-DIR)ft_lstsize.c			\
				$(LST-DIR)ft_lstadd_back.c  	\
 				$(LST-DIR)ft_lstlast.c			\
				$(LST-DIR)ft_lstdelone.c		\
 				$(LST-DIR)ft_lstclear.c			\
				$(LST-DIR)ft_lstiter.c			\
 				$(LST-DIR)ft_lstmap.c			\
												\
				$(PRINTF-DIR)ft_printf.c		\
				$(PRINTF-DIR)puts.c				\
				$(PRINTF-DIR)write.c			\
												\
				$(GNL-DIR)get_next_line.c		\
				$(GNL-DIR)get_next_line_utils.c	\

OBJ			= 	$(SRC:.c=.o)

#████████████████████████████ Rules ███████████████████████████████████████████#

all: 		$(NAME)

$(NAME): 	$(OBJ)
					@ar -rcs $(NAME) $(OBJ)
					@echo "$(GREEN)\n✔️ Libft compiled\n"

%.o:%.c
					@$(CC) $(CFLAGS) -o $@ $<

clean:
					@$(RM) $(OBJ)

fclean:		clean
					@$(RM) ./$(NAME)
					@echo "$(RED)\n✔️ Libft deleted\n"

normi:
					clear
					norminette $(SRC)

re:			fclean all

.PHONY:		all clean fclean re normi