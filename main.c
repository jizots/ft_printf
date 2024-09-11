#include "includes/ft_printf.h"

int main()
{
    ft_printf("-----basic test-----\n");
    ft_printf("Prints a single character: %c\n", 'A');
    ft_printf("Prints a string: %s\n", "Hello, world!");
    ft_printf("The void * pointer argument has to be printed in hexadecimal: %p\n", &main);
    ft_printf("Prints a decimal (base 10) number: %d\n", 42);
    ft_printf("Prints an integer  in base 10: %i\n", 42);
    ft_printf("Prints an unsigned decimal (base 10) number: %u\n", 42);
    ft_printf("Prints a number in hexadecimal (base 16) lowercase format: %x\n", 42);
    ft_printf("Prints a number in hexadecimal (base 16) uppercase format: %X\n", 42);
    ft_printf("Pirnts a percentage sign: %%\n");
    ft_printf("Prints multiple conversions: %d %s %c %p %x %u\n", 42, "Hello, world!", 'A', &main, 42, 42);

    ft_printf("-----stress test-----\n");
    ft_printf("Prints a NULL pointer: %p\n", NULL);
    ft_printf("Prints a too big number: %d\n", 2147483649);
    ft_printf("Prints a negative number: %d\n", -42);
    ft_printf("Field width:                   [%10d]\n", 42);
    ft_printf("Use '-' flag with field width: [%-10d]\n", 42);
    ft_printf("Use '0' flag with field width: [%010d]\n", 42);
    ft_printf("Use '.' flag with field width: [%.10d]\n", 42);
    ft_printf("Use '.' flag with field width: [%.10d]\n", -42);
    ft_printf("Use '#' flag: [%#x]\n", 42);
    ft_printf("Use '(space)' flag with plus integer:  [% d]\n", 42);
    ft_printf("Use '(space)' flag with minus integer: [% d]\n", -42);
    ft_printf("Use '+' flag with plus integer:  [%+d]\n", 42);
    ft_printf("Use '+' flag with minus integer: [%+d]\n", -42);
}
