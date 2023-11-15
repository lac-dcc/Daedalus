#include <stdio.h>

int main(){
	int a=0,b=0;
	int arr[10] = {1,2,3,4,5,6,7,8,9,10};
	for(int i=0;i<10;i+=2) a += arr[i];
	for(int i=1;i<10;i+=2) b += arr[i];
	printf("%d\n", a);
	printf("%d\n", b);

}
