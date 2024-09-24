#include <stdio.h>
#include <stdlib.h>

#define PI 3.14159

int main(int argc, char **argv){
    if(argc < 2) return 42;
    const int N = atoi(argv[1]);
    int arr[N];
    for(int i=0;i<N;++i){
	scanf("%d", &arr[i]);
    }
    int *sum = (int *)malloc(sizeof(int));
    *sum = 0;

    for(int i=0;i<N;++i){
	*sum += arr[i];
	printf("%d\n", arr[i]);
    }
    double k = (double)(*sum) * PI;
    printf("%f\n", k);
    free(sum);
    return k;
}
