#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){
	int a = atoi(argv[1]);
	int b = 0;
	for(int i=0;i<a;++i) b += i;
	//
	int c = b*2;
	int d = b*2;
	int r = c+d;
	printf("%d\n", r);
}
int foo(){
	int a = atoi(argv[1]);
	int b = 0;
	for(int i=0;i<a;++i) b += i;
	//
	int c = b*2;
	int d = b*2;
	int r = c+d;
	printf("%d\n", r);
}

/*



 * */
