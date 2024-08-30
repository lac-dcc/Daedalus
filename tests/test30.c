#include <stdio.h>

int main(int argc, char **argv){
    int a = argc * argc;
    if(a > 5){
	int b = argc*2 + 3;
	printf("%d\n", b);
    }
    return  a *argc;
}
