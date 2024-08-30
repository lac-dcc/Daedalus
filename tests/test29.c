
#include <stdio.h>

int main(int argc, char **argv){
    int a = 0, b = 0;

    for(int i=0;i<argc;++i){
	a += argc+ a * argc + 1;
	b += argc + b *argc + 1;
    }
    printf("%d\n", a);
    printf("%d\n", b);
}
