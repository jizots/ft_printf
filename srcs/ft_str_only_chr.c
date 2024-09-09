/******************************************************************************/
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_str_only_chr.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hotph <hotph@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/31 16:16:13 by sotanaka          #+#    #+#             */
/*   Updated: 2024/09/09 17:49:58 by hotph            ###   ########.fr       */
/*                                                                            */
/******************************************************************************/

#include "ft_printf.h"

int	ft_str_only_chr(char *str)
{
	size_t	start;
	size_t	i;

	start = 0;
	while (str[start] != '\0')
	{
		i = start + 1;
		while (str[i] != '\0')
		{
			if (str[start] == str[i])
				return (-1);
			i++;
		}
		start++;
	}
	return (0);
}

// int main()
// {
// 	printf ("%d", ft_str_only_chr("asdfghjklqwaertyuio"));
// }
