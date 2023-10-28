CC = aarch64-linux-gnu-gcc
LD = aarch64-linux-gnu-ld

CFLAGS = -g -O0 -nostdlib -nodefaultlibs
LDFLAGS := -static  -L ./  -T ./long_plus_prog.lds

#long_plus: long_plus.o
#	$(LD) -o $@ $^

%.o: %.S
	$(CC) $(CFLAGS) -c $< -o $@
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

long_plus: long_plus.o main.o
	$(LD) $(LDFLAGS) -o $@ $^

.PHONY: clean

clean:
	-rm long_plus.o
	-rm long_plus
	-rm main.o
	

