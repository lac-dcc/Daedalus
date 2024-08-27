#include <stdio.h>

int main(int argc, char **argv){
    int a = argc * argc;
    int b = 2;
    int c = 3;
    if(argc > 5){
	b = argc*2 + 3;
	if(argc > 6) c = argc*3 + 2;
    }
    return  a * argc * b * c;
}
