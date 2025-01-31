#include <math.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct circle {
    int r;

} circle;

int area(circle C) { return M_PI * C.r * C.r; };

int main(int argc, char **argv) {
    if (argc < 3) {
        printf("Insufficient number of arguments!\n");
        return 42;
    }
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);
    circle C1 = {a};
    circle C2 = {b};
    int c = area(C1) * area(C2);
    printf("%d\n", c);
    return c;
}
