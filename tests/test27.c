#include <stdio.h>
void g(int a) { printf("%d\n", a); }

int f(int arg) {
    int val;
    int k = 0;
    if (arg % 2) {
        val = 0, k = 1;
	printf("%d\n", k);
    } else{
        val = arg * 2, k = val;
	printf("%d\n", k);
    }
    printf("%d\n", k);
    return val;
}

int main(int argc, char **argv) {
    int a1 = argc * argc;
    g(2);
    return f(argc);
}
