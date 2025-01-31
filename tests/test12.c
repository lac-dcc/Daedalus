#include <stdio.h>

int main(int argc, char **argv){
	int a2;
	if(argc == 2){
		a2 = 0;
	}else a2 = 1;

	//int a4;
	if(a2){
		int a3 = a2;
		printf("%d\n", a3);
		//a4 = a3;
	}
	int a4 = a2;
	//printf("%d\n", a4);

}
