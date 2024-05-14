#include <stdio.h>
int foo(int x, int N) {
  int sum = 0;
  for (int i = 0; i < N; ++i)
    sum += x;
  return sum;
}

int bar(int y, int SIZE, int v) {
  int sum = 0;
  for (int i = 0; i < SIZE; ++i)
    sum += y;
  return v * sum;
}

/*
int slice_sum(int y, int SIZE){
	int sum = 0;
	for (int i = 0; i < SIZE; ++i)
		sum += y;
	return sum;
}
*/

int main(int argc, char** argv) {
  return foo(argc, argc + 10) + bar(argc, argc + 20, 2);
}
