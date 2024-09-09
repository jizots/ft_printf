#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hotph <hotph@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/09 17:24:37 by hotph             #+#    #+#              #
#    Updated: 2024/09/09 18:09:53 by hotph            ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME	=	libftprintf.a
CC 		=	cc
CFLAGS	=	-Wall -Wextra -Werror

SRCS	=	ft_atoi.c\
	ft_bzero.c\
	ft_calloc.c\
	ft_count_digits_int.c\
	ft_itoa.c\
	ft_memset.c\
	ft_printf.c\
	ft_printf_2.c\
	ft_putadrs.c\
	ft_putadrs_directiv.c\
	ft_putchar.c\
	ft_putchar_directiv.c\
	ft_putchar_repeat.c\
	ft_putnbr_directiv.c\
	ft_putnbr_directiv6.c\
	ft_putnbr_int.c\
	ft_putnstr.c\
	ft_putstr.c\
	ft_putstr_directiv.c\
	ft_put_utobase.c\
	ft_strcpy.c\
	ft_strdup.c\
	ft_strlen.c\
	ft_toupper.c\
	ft_utobase.c\
	ft_utobase_directiv.c\
	ft_str_only_chr.c\

BSCRS	=	ft_atoi.c\
	ft_bzero.c\
	ft_calloc.c\
	ft_count_digits_int.c\
	ft_itoa.c\
	ft_memset.c\
	ft_printf.c\
	ft_printf_2.c\
	ft_putadrs.c\
	ft_putadrs_directiv.c\
	ft_putchar.c\
	ft_putchar_directiv.c\
	ft_putchar_repeat.c\
	ft_putnbr_directiv.c\
	ft_putnbr_directiv6.c\
	ft_putnbr_int.c\
	ft_putnstr.c\
	ft_putstr.c\
	ft_putstr_directiv.c\
	ft_put_utobase.c\
	ft_strcpy.c\
	ft_strdup.c\
	ft_strlen.c\
	ft_toupper.c\
	ft_utobase.c\
	ft_utobase_directiv.c\
	ft_str_only_chr.c\

SRCS_DIR = srcs/
OBJS_DIR = objs/
INCLUDES_DIR = includes/

OBJS	=	$(addprefix ${OBJS_DIR}, ${SRCS:%.c=%.o})
BOBJS	=	$(addprefix ${OBJS_DIR}, ${BSRCS:%.c=%.o})

ifdef WITH_BONUS
	SRCS = ${BSCRS}
endif

all:	${OBJS_DIR} $(NAME)

${OBJS_DIR}:
	mkdir -p ${OBJS_DIR}

${OBJS_DIR}%.o: ${SRCS_DIR}%.c
	${CC} ${CFLAGS} -I ${INCLUDES_DIR} -c $< -o $@

$(NAME):	$(OBJS)
	ar rcs $@ $^

bonus:	$(OBJS) $(BOBJS)
	ar rcs $(NAME) $^

clean:
	rm -f $(OBJS) $(BOBJS)
	rmdir $(OBJS_DIR) 2> /dev/null || true

fclean:	clean
	rm -f $(NAME)
	rm -f a.out

re: fclean all

exec:	all
	${CC} ${CFLAGS} main.c -L. -lftprintf
