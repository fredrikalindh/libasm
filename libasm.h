/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/19 20:57:28 by frlindh           #+#    #+#             */
/*   Updated: 2020/01/21 13:30:51 by frlindh          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

typedef struct s_list
{
	void			*data;
	struct s_list	*next;
}				t_list;

extern int	ft_strlen(char const *rdi);
extern char	*ft_strcpy(char *dest, char const *rdi);
extern int	ft_strcmp(char *s1, const char *s2);
extern unsigned int ft_write(int fd, const void *buf, unsigned int c);
extern unsigned int ft_read(int fd, void *buf, unsigned int count);
extern char *ft_strdup(const char *s);
extern int ft_list_size(t_list *begin_list);
extern void ft_list_push_front(t_list **begin_list, void *data);

#endif
