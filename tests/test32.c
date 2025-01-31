#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){
    int a = 150 * argc;
    int *b = (int *)malloc(sizeof(int));
    printf("%d\n", *b);
    free(b);
}
