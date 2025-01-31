#include <stdio.h>

int g(){
	return 2;
}

int f(){
	return g();
}

int main(){
	f();
}
