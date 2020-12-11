#include <stdio.h>
#include "foo.h"
 
int main(void)
{
    puts("This is a shared library test... 3");
    foo();
    return 0;
}
