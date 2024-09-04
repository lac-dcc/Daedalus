#include <stdio.h>
#include <stdlib.h>

int main(void){
    int a = 150;
    int *b = &a;
    printf("%d\n", a);
    printf("%p", b);
    printf("%d, %p\n", a, b);
    char s[1] = "2";
    int *c = (int *)malloc(sizeof(int));
    free(b);
}
