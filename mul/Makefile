CC = arm-none-eabi-gcc
CFLAGS = -O3 -nostartfiles -mcpu=cortex-m0 -mthumb -Wl,--gc-sections
#CC = clang
#CFLAGS = -O3 -DCORTEX_M0 -mthumb -ffunction-sections -fdata-sections -fmessage-length=0 -mcpu=cortex-m0 -fno-builtin  -ffreestanding -target arm-none-eabi -mfloat-abi=soft -nostdlib

INCDIRS=-I./stm32f0xx

STMOBJ = stm32f0xx/system_stm32f0xx.o  \
         stm32f0xx/stm32f0xx_gpio.o  \
         stm32f0xx/stm32f0xx_rcc.o  \
         stm32f0xx/stm32f0xx_usart.o  \
         stm32f0xx/startup_stm32f0xx.o \
				 stm32f0xx/sbrk.o

LINKERFILE = stm32f0xx/stm32f0_linker.ld

all: test/test.bin test/speed.bin
				 
test/test.elf: $(STMOBJ) test/test416.c test/print.c mul416.s
	$(CC) $(CFLAGS) $(INCDIRS) -T $(LINKERFILE) $(STMOBJ)  test/test416.c test/print.c test/randombytes.c mul416.s -o $@

test/speed.elf: $(STMOBJ) test/speed.c test/print.c mul416.s
	$(CC) $(CFLAGS) $(INCDIRS) -T $(LINKERFILE) $(STMOBJ)  test/speed.c test/print.c test/randombytes.c mul416.s -o $@

%.bin: %.elf
		 arm-none-eabi-objcopy  -O binary $^ $@

%.o: %.c
	$(CC) -g -Wall $(CFLAGS) $(INCDIRS) -c $^ -o $@

%.o: %.s
	$(CC) $(CFLAGS) $(INCDIRS) -c $^ -o $@


.PHONY: clean

clean:
	-rm *.o
	-rm mul32.o
	-rm mul48.o
	-rm mul96.o
	-rm mul112.o
	-rm mul128.o
	-rm mul208.o
	-rm mul256.o
	-rm stm32f0xx/*.o
	-rm test/test.elf
	-rm test/test.bin
	-rm test/speed.elf
	-rm test/speed.bin
