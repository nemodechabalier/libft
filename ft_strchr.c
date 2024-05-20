/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nde-chab <nde-chab@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/18 19:00:34 by nde-chab          #+#    #+#             */
/*   Updated: 2024/05/20 16:23:59 by nde-chab         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	size_t	i;

	i = 0;
	while (s[i])
	{
		if (s[i] == (t_byte)c)
			return ((char *)s + i);
		i++;
	}
	if ((t_byte)c == '\0')
		return ((char *)s + i);
	return (NULL);
}
/*
#include<stdio.h>
int	main()
{
	char str[] = "lewjeldjwx";
	printf("%s", ft_strchr(str, ' '));
	return (0);
}
*/