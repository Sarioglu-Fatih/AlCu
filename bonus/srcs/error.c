/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bwisniew <bwisniew@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/30 12:46:48 by bwisniew          #+#    #+#             */
/*   Updated: 2024/03/30 14:18:22 by bwisniew         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_error(char *err)
{
	size_t	i;

	i = 0;
	while (err[i])
		i++;
	write(2, err, i);
}