/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   find_bsq.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: minhnguy <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/08/26 11:38:37 by minhnguy          #+#    #+#             */
/*   Updated: 2019/08/26 19:40:07 by minhnguy         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "main.h"

int		min(int a, int b)
{
	if (a < b)
		return (a);
	return (b);
}

int		is_empty(char c)
{
	if (c == g_empty)
		return (1);
	else if (c == g_obstacle)
		return (0);
	return (0);
}
