#include <stdio.h>
int sliceAndDice(int s, int e, int r, int* num_elements) {
  int count = 0;
  int sum = 0;
  for (int i = s; i < e; i += r) {
    count++;
    sum += i;
  }
  *num_elements = count;
  return sum;
}

int main(int argc, char** argv)  {
  int count;
  printf("%d\n", sliceAndDice(argc, argc+3, 1, &count));
  return count;
}
