#include <stdio.h>
void f(int a){
    for(int i=0;i<a;++i){
	printf("%d\n", i*i);
    }
}

int main(int argc, char **argv){
    for(int i=0;i<argc;++i){
	for(int j=0;j<i;++j){
	    if(argc > 2){
		f(argc);
	    }else{
		f(argc*argc);
	    }
	}
    }
}
