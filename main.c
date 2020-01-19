/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/19 16:16:04 by frlindh           #+#    #+#             */
/*   Updated: 2020/01/19 22:30:20 by frlindh          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libasm.h"

int main(int ac, char const *av[])
{
	(void)ac;
	int i;
	char *dest;
	char *dest2;


	i = ft_strlen(av[1]);
	dest = (char *)malloc(sizeof(i));
	dest2 = "fredrika lindhfagaga";
	printf("ADR DST 1: %p: %s\n", dest, dest);
	ft_strcpy(dest, av[1]);
	printf("ADR SRC:   %p \nADR DST 2: %p: %s\n", av[1], dest, dest);
	printf("Length of string [%s] is %d\nand the copy of the string is: \"%s\" \n", av[1], i, dest);

	printf("Diffrence between \"%s\" & \"%s\" is %d", dest, dest2, ft_strcmp(dest2, dest));
	return 0;
}
