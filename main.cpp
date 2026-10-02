#include <cassert>

#include "sum.h"

int main() {
	assert(sum(0, 0) == 0);
	assert(sum(1, 2) == 3);
	assert(sum(1, -3) == -2);

	return 0;
}
