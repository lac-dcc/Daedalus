#include <stdio.h>
void f(int *i){
    *i = (*i)+(*i);
}

int main(){
    int i = 2*5;
    f(&i);
    printf("%d\n", i);
    return i*i;
}
