#include <stdio.h>
#include <stdlib.h>

int a;
int b;

int f(){
    printf("%d\n", a+b);
    return a + b;
}

void g(int c){
    b = c*b+a;
    a = c+a;
}

int main(int argc, char **argv){
    if(argc < 2) return 42;
    a = 3;
    b = atoi(argv[1]);
    f();
    g(b+a);
    a = atoi(argv[1]);
    f();
    g(b+a);
    f();
}


