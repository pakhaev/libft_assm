/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rvoltigo <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/20 17:37:43 by rvoltigo          #+#    #+#             */
/*   Updated: 2021/01/20 17:37:50 by rvoltigo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef	LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <fcntl.h>
# include <string.h>
# include <unistd.h>
# include <stdlib.h>

size_t	ft_strlen(char *str);
int		ft_write(int handle, void *buf, int count);
int		ft_read(int fd, void *buf, unsigned count);
char	*ft_strcpy (char *destination, const char *source);
char	*ft_strdup(const char *str);
int		ft_strcmp (const char *str1, const char *str2);

#endif
