/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/19 16:16:04 by frlindh           #+#    #+#             */
/*   Updated: 2020/01/21 16:48:08 by frlindh          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "libasm.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int ac, char const *av[])
{
	int i;
	char *dest;
	char *dest3;
	char buf[100];
	int	ret;
	int	fd;

	i = ft_strlen(av[1]);
	ft_write(1, "Your string: ", 13);
	ft_write(1, av[1], i);
	ft_write(1, "\n", 1);

	dest = (char *)malloc(i);
	printf("ADR DST 1: %p\n", dest);
	ft_strcpy(dest, av[1]);
	printf("ADR SRC:   %p \nADR DST 2: %p: %s\n", av[1], dest, dest);
	printf("Length of string [%s] is %d\nand the copy of the string is: \"%s\" \n", av[1], i, dest);

	printf("COMPARE \"\" and \"\" equals %d with mine and %d with real\n", ft_strcmp("\xfe", "\xfe\xff"), strcmp("\xfe", "\xfe\xff"));
	printf("COMPARE \"h\" and \"h\" equals %d with mine and %d with real\n", ft_strcmp("h", "h"), strcmp("h", "h"));


	printf("COMPARE \"\" and \"\" equals %d with mine and %d with real\n", ft_strcmp("", ""), strcmp("", ""));
	printf("COMPARE \"h\" and \"h\" equals %d with mine and %d with real\n", ft_strcmp("h", "h"), strcmp("h", "h"));
	printf("COMPARE \"TEST\" and \"test\" equals %d with mine and %d with real\n", ft_strcmp("TEST", "test"), strcmp("TEST", "test"));
	printf("COMPARE \"test\" and \"TEST\" equals %d with mine and %d with real\n", ft_strcmp("test", "TEST"), strcmp("test", "TEST"));
	printf("COMPARE \"A\" and \"%s\" equals %d with mine and %d with real\n", dest, ft_strcmp("A", dest), strcmp("A", dest));
	printf("COMPARE \"%s\" and \"A\" equals %d with mine and %d with real\n", dest, ft_strcmp(dest, "A"), strcmp(dest, "A"));


	if (ac > 2)
	{
		printf("\nREAD FILE: \n");
		fd = open(av[2], O_RDWR);
		ret = ft_read(fd, buf, 101);
		buf[ret] = '\0';
		write(1, buf, ret - 1);
	}

	dest3 = 0;
	printf("\nADDRESS OF dest3 %p\nand of dest %p\n", dest3, dest);
	dest3 = ft_strdup(av[1]);
	printf("address of strdup: %p\nSTRDUP: \"%s\"\n",  dest3, dest3);

	t_list *list;
	list = NULL;
	ft_list_push_front(&list, NULL);
	ft_list_push_front(&list, NULL);
	ft_list_push_front(&list, NULL);
	ft_list_push_front(&list, NULL);
	ft_list_push_front(&list, NULL);
	int size = ft_list_size(list);
	printf("\nSize of list: %d\n", size);


	return 0;
}
