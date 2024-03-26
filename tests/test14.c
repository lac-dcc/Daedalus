
void f(int *i){
    *i = (*i)+(*i);
}

int main(){
    int i = 2*5;
    f(&i);
    return i*i;
}
