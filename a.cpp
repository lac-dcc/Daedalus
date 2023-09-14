#include <cassert>
#include <iostream>

int f(int a){
	printf("%d", a);
	return a;
};

int g(int b){
	return b+2;
}

int h(int a, int b, int c){
	return a + b * c;
}

int main(void){
	int x[3] = {2,3,4};
	int y[3] = {4,63,4};
	int a = x[0] + x[1] * x[2];
	int b = y[0] + y[1] * y[2];

	int xa = h(x[0], x[1], x[2]);
	int yb = h(y[0], y[1], y[2]);
	assert(xa == a && yb == b);
}
