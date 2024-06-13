int foo(int x, int N) {
  int sum = 0;
  for (int i = 0; i < N; ++i)
    sum += x;
  return sum;
}

int bar(int y, int SIZE, int v) {
  return v * foo(y, SIZE);
}

int main(int argc, char** argv) {
  return foo(argc, argc + 10) + bar(argc, argc + 20, 2);
}
