#include <stdio.h>

int f(int arg){
    int a0 = arg*arg;
    int a1 = a0*2;
    int a2 = a1*2;
    int a3 = a2*2;
    int a4 = a3*2;
    int a5 = a4*2;
    int a6 = a5*2;
    int a7 = a6*2;
    return a7;
}

int main(int argc, char **argv){
    int a0 = argc*argc;
    int a1 = a0*2;
    int a2 = a1*2;
    int a3 = a2*2;
    return a3;
}
