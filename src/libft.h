/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: columbux <columbux@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/26 21:11:51 by ahiguera          #+#    #+#             */
/*   Updated: 2024/05/09 21:43:48 by columbux         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stdlib.h>
# include <unistd.h>
# include <stdarg.h>
# include <stdbool.h>
# include <errno.h>
# include <stdio.h>

/* ------------------------------------------------------------------------- */
//libft prototypes
/* ------------------------------------------------------------------------- */

# define RED	"\033[31m"

typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}					t_list;

//errors
void	ft_error(char *message);
void	ft_perror(void);

//ft_*to*
int		ft_atoi(const char *str);
char	*ft_itoa(int n);
int		ft_tolower(int c);
int		ft_toupper(int c);

//ft_fd
void	ft_putchar_fd(char c, int fd);
void	ft_putendl_fd(char *s, int fd);
void	ft_putnbr_fd(int n, int fd);
void	ft_putstr_fd(char *s, int fd);

//ft_is
int		ft_isalnum(char c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_isspace(int c);

//ft_lst
t_list	*ft_lstnew(void	*content);
void	ft_lstadd_front(t_list **lst, t_list *new);
int		ft_lstsize(t_list *lst);
t_list	*ft_lstlast(t_list *lst);
void	ft_lstadd_back(t_list **lst, t_list *new);
void	ft_lstdelone(t_list *lst, void (*del)(void *));
void	ft_lstclear(t_list **lst, void (*del)(void *));
void	ft_lstiter(t_list *lst, void (*f)(void *));
t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));

//ft_mem
void	*ft_memchr(const void *s, int c, int n);
int		ft_memcmp(const void *s1, const void *s2, size_t n);
void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memmove(void *dest, const void *src, size_t n);
void	*ft_memset(void *s, int c, size_t len);

//ft_str
void	ft_striteri(char *s, void (*f)(unsigned int, char*));
char	*ft_strchr(const char *s, int c);
char	*ft_strdup(const char *s1);
char	*ft_strjoin(char const *s1, char const *s2);
size_t	ft_strlcat(char *dst, const char *src, size_t dstsize);
size_t	ft_strlcpy(char *dest, const char *src, size_t destsize);
size_t	ft_strlen(const char *str);
int		ft_strlin(const char *str);
char	*ft_strmapi(const char *s, char (*f)(unsigned int, char));
int		ft_strncmp(const char *s1, const char *s2, size_t n);
char	*ft_strnstr(const char *haystack, const char *needle, size_t len);
char	*ft_strrchr(char *str, int c);
char	*ft_strtrim(char const *s1, char const *set);
char	*ft_substr(char const *s, unsigned int start, size_t len);

//ft_*
void	ft_bzero(void *s, size_t n);
void	*ft_calloc(size_t count, size_t size);
char	**ft_split(char const *s, char c);
void	ft_free_array(char **array);

/* ------------------------------------------------------------------------- */
//ft_printf prototypes
/* ------------------------------------------------------------------------- */
# define DECIMAL		"0123456789"
# define HEXADECIMAL_UP "0123456789ABCDEF"
# define HEXADECIMAL_LO "0123456789abcdef"
# define OCTAL			"01234567"

# define PTR_PREFIX		"0x"
# define NULL_STR		"(null)"

int		ft_printf(char const *h, ...);

void	pf_betterwrite(void *buf, size_t len, int *result);
void	pf_putchar(char c, int *result);
void	pf_putstr(char *str, int *result);

void	pf_putbase(unsigned long n, char *base, int *result);
void	pf_putsigned(int n, int *result);
void	pf_putpointer(void *ptr, int *result);
void	pf_putuntilpercent(char *str, size_t *i, int *result);

/* ------------------------------------------------------------------------- */
//get_next_line prototypes
/* ------------------------------------------------------------------------- */
# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 50
# endif

char	*gn_strchr_(char *s, int c);
char	*gn_strjoin(char *s1, char const *s2, size_t len);

char	*get_next_line(int fd);

#endif