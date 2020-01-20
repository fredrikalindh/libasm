/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/19 20:57:28 by frlindh           #+#    #+#             */
/*   Updated: 2020/01/20 21:57:41 by frlindh          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

extern int	ft_strlen(char const *rdi);
extern char	*ft_strcpy(char *dest, char const *rdi);
extern int	ft_strcmp(char *s1, const char *s2);
extern unsigned int ft_write(int fd, const void *buf, unsigned int c);
extern unsigned int ft_read(int fd, void *buf, unsigned int count);
extern char *ft_strdup(const char *s);

#endif
