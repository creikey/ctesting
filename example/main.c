#include <stdio.h>
#include <ctesting/testing.h>
#include "numb.h"

int main(void) {
	t_init();
	test_numb();
	t_end();
	printf("Hello, world! Sqr of 3 is %d\n", sqr(3));
}
