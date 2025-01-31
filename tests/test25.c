#include <stdio.h>

int f(int arg){
    int a1 = arg*arg;
    int a2 = a1*2;
    int a3 = a2*2;
    int a4 = a3*2;
    int a5 = a4*2;
    int a6 = a5*2;
    int a7 = a6*2;
    int a8 = a7*2;
    int a = a8 + 5;
    int c = a5 * 5;
    int b = 2*a + 2;
    printf("On f: %d\n", b);
    printf("On f: %d\n", c);
    return b;
}
int g(int a){
    return a*25+25+5;
}

int main(int argc, char **argv){
    int a1 = argc*argc;
    int a2 = a1*2;
    int a3 = a2*2;
    int a4 = a3*2;
    int a5 = a4*2;
    int a6 = a5*2;
    int a7 = a6*2;
    int a8 = a7*2;
    int a = a8 + 5;
    int b = 2*a + 2;
    int c = f(2)-6;
    printf("On main: %d\n", b);
    return b;
}
