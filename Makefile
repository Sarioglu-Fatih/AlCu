NAME			=	alcu

SRCS			=	main.c		\
					utils.c		\

CC				=	cc

CFLAGS			=	-Wall -Wextra -Werror 

OBJS			=	$(addprefix $(OBJ_DIR), $(SRCS:.c=.o))

RM				=	rm -rf

OBJ_DIR			=	obj/

MKDIR			=	mkdir -p

HEADER_FILE		=	alcu.h

SRC_DIR			=	srcs/



all				:	$(NAME)

$(OBJ_DIR)%.o	:	$(SRC_DIR)%.c $(HEADER_FILE)`
	$(MKDIR) $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME)			:	$(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

clean			:
	$(RM) $(OBJ_DIR)

fclean			:	clean
	$(RM) $(NAME)

re				:	fclean all

.PHONY			:	all clean fclean re