#include <stdio.h>
int f(int a){
    return a;
}

int g(int a){
    return a;
}

int main(int argc, char **argv){
    printf("%d\n", f(argc));
    printf("%d\n", g(argc*argc));
}

