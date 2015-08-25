#include "print.h"
#include "randombytes.h"

#define SIZE 52
#define RESULT 116

/*static void mul64(unsigned char* r, const unsigned char * a, const unsigned char * b){
    int n = 7;
    int t = 7;
    
    int i;
    int j;
    int c = 0;
    
    for(i=0;i<SIZE*2;i++){
        r[i] = 0;
    }

    for(i=0;i<=t;i++){
        c = 0;
        int u;
        for(j=0;j<=n;j++){
            int temp = (int)r[i+j] + a[j]*b[i] + c;
            unsigned char tempa[2];
            tempa[0] = temp;
            tempa[1] = (temp >> 8);
            c = tempa[1];
            r[i+j] = tempa[0];
            u = tempa[1];  
        }
        r[i+n+1] = u;
    }
}*/
extern void mul416(unsigned char *r, unsigned char *a, unsigned char *b);

static void test(void (*func)(unsigned char *, unsigned char *, unsigned char *)){

	unsigned char a[SIZE];
  	unsigned char b[SIZE];
  	unsigned char r[RESULT];

	//srand(time(0));
	
	int i = 0;

	for(i = 0;i<SIZE;i++){
		a[i] = 0xC8;
		b[i] = 0xC8;
	}

	
	
	(*func)(r,a,b);
	
	//bigint_print(b,SIZE);
	bigint_print(r,RESULT-12);
	print("\n");
}

int main(){
  	//96 bits
  	test(mul416);
	//print("hello world\n");	

	write_byte(4);
  	return 0;
}
