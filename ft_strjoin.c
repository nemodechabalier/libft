/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nde-chab <nde-chab@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/20 17:08:09 by nde-chab          #+#    #+#             */
/*   Updated: 2024/05/20 18:51:12 by nde-chab         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*dest;
	t_byte	size1;
	t_byte	size2;

	if (!s1 && !s2)
		return (ft_strdup(NULL));
	size1 = ft_strlen(s1);
	size2 = ft_strlen(s2);
	if (size1 == 0)
		return (ft_strdup(s2));
	if (size2 == 0)
		return (ft_strdup(s1));
	dest = calloc(size1 + size2 + 1, sizeof(char));
	ft_memcpy(dest, s1, size1);
	ft_memcpy(dest + size1, s2, size2);
	return (dest);
}
