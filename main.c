/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/19 16:16:04 by frlindh           #+#    #+#             */
/*   Updated: 2020/01/19 20:18:33 by frlindh          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

int main(int ac, char const *av[])
{
	(void)ac;
	int i;
	char *dest;
	extern int ft_strlen(char const *rdi);
	extern char *ft_strcpy(char *dest, char const *rdi);

	i = ft_strlen(av[1]);
	// dest = (char *)malloc(sizeof(i));
	dest = "fredrika lindh";
	printf("%p: %s\n", &dest, dest);
	// dest = ft_strcpy(dest, av[1]);
	printf("%p: %s\n", &dest, dest);
	printf("Length of string [%s] is %d\nand the copy of the string is: \"%s\"", av[1], i, dest);
	return 0;
}
