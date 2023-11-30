#include <stdio.h>

bool f(int a){
	return a==0;
}

bool slice_for_cond(){
	int a = 2;
	return f(a);
}

int main(){
	int a = 2;
	for(int i=0;f(a);++i) --a;
	printf("%d\n", a);
}

