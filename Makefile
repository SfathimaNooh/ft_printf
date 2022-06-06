NAME	= libftprintf.a
cc		= gcc
CFLAG	= -Wall -Werror -Wextra
RM		= rm -f
AR		= ar
ARFLAG	= crs
SRC		= ft_printf.c print_utlis_1.c print_utlis_2.c print_utlis_3.c 

OBJS	= $(SRC:.c=.o)

all		: $(NAME)

bonus	: all

%.o : %.c
	$(CC) $(CFLAG) -c $< -o $@

clean	:
	$(RM) $(RMFLAG) $(OBJS)
fclean	: clean
	$(RM) $(RMFLAG) $(NAME)

re		: fclean all

$(NAME) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

 .PHONY : all clean fclean re
