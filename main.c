#include <stdio.h>
#include "foo.h"
 
int main(void)
{
    puts("This is a shared library test... 2");
    foo();
    return 0;
}
