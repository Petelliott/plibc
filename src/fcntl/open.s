/*
the posix c function for the linux open syscall
Copyright (C) 2017  Peter Elliott

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

.text

.globl open


open: # made in assembly so we dont have to deal with va_args
    mov %rdx, %rcx
    mov %rsi, %rdx
    mov %rdi, %rsi
    mov $2, %rdi
    call _plibc_syscall
    ret
