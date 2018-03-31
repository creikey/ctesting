#include <ctesting/testing.h>
#include "numb.h"

int sqr(int in) {
	return in*in;
}

void test_numb() {
	t_start_suit("numb");
	test_sqr();
	t_end_suit();
}

void test_sqr() {
	t_start_test("sqr");
	T_ASSERT(sqr(5) == 25);
	t_end_test();
}
