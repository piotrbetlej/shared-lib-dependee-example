#include "shared-lib-example.h"
#include <stdio.h>

int main(void)
{
	printf("Here is %s\n", __FILE__);
	shared_lib_example_say_hello();
	return 0;
}
