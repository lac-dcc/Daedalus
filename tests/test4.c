/*
  This is an example of tricky ladder graph, inspired by the LLVM Test Suite program
  called "SingleSource/UnitTests/2003-07-09-SignedArgs".
*/
#include <stdio.h>
#include <stdlib.h>

void tricky_ladder(int a, int b, int c) {
  int d = a + b;
  if (a < 41) {
    if (b < 33) {
      if (c < 25) {
        d = d * c;
        if (c < 17) {
          printf("d value: %d\n", d);
        } else {
        block3:
          printf("w value: %d\n", d);
        }
      } else {
      block2:
        d = a * d;
        printf("y value: %d\n", d);
        goto block3;
      }
    } else {
    block1:
      printf("q value: %d\n", d);
      goto block2;
    }
  } else {
    printf("x value: %d\n", d);
    goto block1;
  }
  int t = d << 16;
  printf("t value: %d\n", t);
}

int main(int argc, char *argv[]) {
  if (argc < 4) {
    fprintf(stderr, "Usage: %s <arg1> <arg2> <arg3>\n", argv[0]);
    return 1;
  }
  int arg1 = atoi(argv[1]);
  int arg2 = atoi(argv[2]);
  int arg3 = atoi(argv[3]);
  int val1 = arg1 * arg2;
  int val2 = arg3 * arg2;
  tricky_ladder(argc, val1, val2);
  return 0;
}