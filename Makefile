##### VARIABLES #####

## TARGET ##

NAME := libft.a

## COMPILATION ##

CC := cc

CFLAGS += -Wall
CFLAGS += -Wextra 

ifneq ($(NOERROR), true)
	CFLAGS += -Werror
endif

ifeq ($(DEBUG), true)
	DFLAGS += -g3
	ifneq ($(NOSANITIZE), true)
		DFLAGS += -fsanitize=address,undefined,leak
	endif
endif


AR := ar

ARFLAGS := rcs

## SOURCES ##

SRCS_DIR := .

SRCS += ft_isalpha.c
SRCS += ft_isdigit.c
SRCS += ft_isalnum.c
SRCS += ft_isascii.c
SRCS += ft_isprint.c
SRCS += ft_strlen.c
SRCS += ft_memset.c
SRCS += ft_bzero.c
SRCS += ft_memcpy.c
SRCS += ft_memmove.c
SRCS += ft_strlcpy.c
SRCS += ft_strlcat.c
SRCS += ft_toupper.c
SRCS += ft_tolower.c
SRCS += ft_strchr.c
SRCS += ft_strrchr.c
SRCS += ft_strncmp.c
SRCS += ft_memchr.c
SRCS += ft_memcmp.c
SRCS += ft_strnstr.c
SRCS += ft_atoi.c
SRCS += ft_calloc.c
SRCS += ft_strdup.c
SRCS += ft_substr.c
SRCS += ft_strjoin.c
SRCS += ft_strtrim.c
SRCS += ft_split.c
SRCS += ft_itoa.c
SRCS += ft_strmapi.c
SRCS += ft_striteri.c
SRCS += ft_putchar_fd.c
SRCS += ft_putstr_fd.c
SRCS += ft_putendl_fd.c
SRCS += ft_putnbr_fd.c

#SRCS += ft_lstnew.c
#SRCS += ft_lstadd_front.c
#SRCS += ft_lstsize.c
#SRCS += ft_lstlast.c
#SRCS += ft_lstadd_back.c
#SRCS += ft_lstdelone.c
#SRCS += ft_lstclear.c

vpath %.c $(SRCS_DIR)

## HEADERS ##

INCLUDES_DIR := .

HEADERS += libft.h

vpath %.h $(INCLUDES_DIR)

## OBJECTS ##

OBJS_DIR := .

OBJS := $(patsubst %.c, %.o, $(SRCS))

##### HOOKS #####

GIT_ROOT_PATH := $(shell git rev-parse --show-toplevel)

PREPUSH_FILE := $(GIT_ROOT_PATH)/.git/hooks/pre-push


##### RULES #####

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

$(OBJS): $(OBJS_DIR)/%.o: %.c $(HEADERS) | $(OBJS_DIR)  # pattern rule
	$(CC) $(CFLAGS) $(DFLAGS) -c $< -o $@ -I $(INCLUDES_DIR)

$(OBJS_DIR):
	@mkdir $(OBJS_DIR) 2>/dev/null || true # 2 is an ionumber

clean:
	$(RM) $(OBJS)
	@rmdir $(OBJS_DIR) 2>/dev/null || true

fclean: clean
	$(RM) $(NAME)

re: fclean all

install-hooks: install-prepush-hooks

install-prepush-hooks:
	echo "norminette" > $(PREPUSH_FILE)
	chmod +x $(PREPUSH_FILE)

.PHONY: all clean fclean re install-hooks install-prepush-hooks
