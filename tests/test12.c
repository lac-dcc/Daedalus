#include <stdio.h>

int main(int argc, char **argv){
	int a2;
	if(argc == 2){
		a2 = 0;
	}else a2 = 1;

	if(a2){
		int a3 = a2;
		printf("%d\n", a3);
	}
	int a4 = a2;

}
