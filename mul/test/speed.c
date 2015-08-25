#include <stdio.h>
#include <stm32f0xx.h>
#include "print.h"

#define NBENCH 10

extern void mul416(unsigned char *r, const unsigned char *a, const unsigned char *b);

int main(void)
{
  char out[100];
  unsigned char a[52], b[52], r[172];
  int t[NBENCH];
  int i;

  SysTick_Config(12000000);
  SysTick->VAL = 0;

  for(i=0;i<NBENCH;i++)
  {
    t[i] = SysTick->VAL;
    mul416(r,a,b);
  }
  
  for(i=0;i<NBENCH-1;i++)
    t[i] = t[i] - t[i+1];
  
  for(i=0;i<NBENCH-1;i++)
  {
    sprintf(out, "%d ", t[i]);
    print(out);
  }
  print("\n");

  write_byte(4);
  while(1);
}
