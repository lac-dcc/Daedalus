#include <stdio.h>


int main(int argc, char **argv){
  unsigned int i =0;
  while(++i < 1e9){
    int a = 2;
    int b = a+2;
    int c = b+3;
    int d = c+4;
    int e = d+5;
  }
}

void f(){
    int a = 2;
    int b = a+2;
    int c = b+3;
    int d = c+4;
    int e = d+5;
}
