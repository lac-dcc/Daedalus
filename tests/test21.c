#include <stdio.h>

int main(int argc, char ** argv){
    int a = 0;
    for(int i=0;i<argc;++i) a += i;
    printf("%d\n", a);
}
