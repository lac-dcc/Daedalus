#include <stdio.h>
void f(int argc){
    int c;
    if(argc > 2){
	int a = 2*argc;
	c = a;
	printf("%d", a);
    }else{
	int b = 3*argc*argc;
	c = b;
	printf("%d", b);
    }
    printf("%d", c);
}

int main(int argc, char **argv){
    int c;
    if(argc > 2){
	int a = 2*argc;
	c = a;
	printf("%d", a);
    }else{
	int b = 3*argc*argc;
	c = b;
	printf("%d", b);
    }
    printf("%d", c);
}
