#include <stdio.h>
int f(int argc){
	int a4 = 1;
	for(int a5 = 0;a5 < argc; ++a5){
		a4 *= (a5+1);
	}
	return a4*a4;
}

int main(int argc, char **argv){
	int a2;
	if(argc == 2){
		a2 = 0;
	}else a2 = 1;
	int a4 = 1;
	for(int a5 = 0;a5 < argc; ++a5){
		a4 *= (a5+1);
	}
	//int a4;
	int a3 = a2;
	if(a2){
		a3 = 2*a2;
		//a4 = a3;
	}
	printf("%d\n", a3);
	a4 = f(2);
	int a6 = f(3);
	return a4*a4; // slice_a4(i32 argc);
}

