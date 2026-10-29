#include <stdio.h>
#include "calculator.h"

int main(void) {
    int a = 6;
    int b = 4;

    printf("a = %d, b = %d\n", a, b);
    printf("Sum: %d\n", add(a, b));
    printf("Product: %d\n", multiply(a, b));

    return 0;
}
