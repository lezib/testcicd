#include <stdio.h>

void pri() {
	printf("ca c'est du main de fou furieux");
}

#ifndef TEST_MODE
int main() {
	pri();
	return 0;
}
#endif /* ifdef TEST_MODE */
