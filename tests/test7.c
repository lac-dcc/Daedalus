/* test2.c, but with no global variables */
#include <stdio.h>
#include <stdlib.h>

int f(int a, int b) {
  printf("%d\n", a + b);
  return a + b;
}

void g(int a, int b, int c) {
  b = c * b + a;
  a = c + a;
}

int main(int argc, char **argv) {
  if (argc < 2) return 42;
  int a = 3;
  int b = atoi(argv[1]);
  f(a, b);
  g(a, b, b + a);
  a = atoi(argv[1]);
  f(a, b);
  g(a, b, b + a);
  f(a, b);
}
