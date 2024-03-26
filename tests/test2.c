#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int h(int a, int b){
	return (b+b%a)/a;
}

int g(int a){
	return (a+a%10)/10; // ceil
}

int f(int a, int b){
	if(a < b) return h(a,b);
	return (a+a%b)/b;
}

int main(void){
	int a,b;
	srand(time(NULL));

	a = rand() % 100 + 1;
	b = rand() % 100 + 1;

	int c = g(a);
	printf("%d\n", c);
	printf("%d\n", f(a,b));
	return 1;
}
