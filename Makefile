NAME = libft.a
LIBFT = libft.h
FLAGS = -Wall -Wextra -Werror

SRCS = ft_atoi.c \
	  ft_bzero.c \
	  ft_isalnum.c \
	  ft_isalpha.c \
	  ft_isascii.c \
	  ft_isdigit.c \
	  ft_isprint.c \
	  ft_memchr.c \
	  ft_memcmp.c \
	  ft_memcpy.c \
	  ft_memmove.c \
	  ft_memset.c \
	  ft_strlcat.c \
	  ft_strchr.c \
	  ft_strlen.c \
	  ft_strrchr.c \
	  ft_strnstr.c \
	  ft_strncmp.c \
	  ft_strdup.c \
	  ft_calloc.c \
	  ft_tolower.c \
	  ft_toupper.c \
	  ft_substr.c \
	  ft_strjoin.c \
	  ft_strtrim.c \
	  ft_split.c \
	  ft_itoa.c \
	  ft_strmapi.c \
	  ft_putchar_fd.c \
	  ft_putendl_fd.c \
	  ft_putstr_fd.c \
	  ft_putnbr_fd.c \

OBJS = $(SRCS:.c=.o)

.PHONY: all clean fclean re

all:	#$(NAME)
		$(MAKE) $(NAME)

$(NAME): $(OBJS) $(LIBFT)
		ar rcs $(NAME) $(OBJS)
		ranlib $(NAME)
		@echo "Libft compiled"

%.o: %.c $(LIBFT)
		gcc $(FLAGS) -c $< -o $@

clean:
		@rm -f $(OBJS)
		@echo "Libft cleaned"

fclean:	clean
		@rm -f $(NAME)
		@echo "Libft full cleaned"

re:		fclean all