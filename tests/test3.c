#include <stdio.h>

int main(void){
	int value = 0;
	for(int i=0;i<10;++i) value += i;
	int k = value;
	printf("%d\n", k);
}
