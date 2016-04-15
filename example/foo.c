#include <stdio.h>
#include "common.h"

int main(void) {
  X x;
  x.a = 4; x.b = 3;

  printf("Sum of %d and %d is %d\n", x.a, x.b, x.a + x.b);

  printf("function(%d) = %d\n", BAR, function(BAR));

  printf("adder(4,5) = %d\n", adder(4,5));

  return 0;
}
