/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nde-chab <nde-chab@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/18 19:07:52 by nde-chab          #+#    #+#             */
/*   Updated: 2024/05/20 18:52:44 by nde-chab         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	int	i;

	i = ft_strlen(s);
	while (i >= 0)
	{
		if (s[i] == (t_byte)c)
			return ((char *)s + i);
		i--;
	}
	return (NULL);
}

/*
#include <stdio.h>

int	main(void)
{
	char	str[] = "zlewjeld0jwx";

	printf("%s", ft_strrchr(str, '3'));
	return (0);
}
*/