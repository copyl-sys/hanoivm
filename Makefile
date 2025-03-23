# Makefile for HanoiVM

CWEB_SOURCES = \
	hvm_loader.cweb \
	disassembler.cweb \
	hanoivm_vm.cweb \
	main_driver.cweb

C_OBJS = \
	hvm_loader.c \
	disassembler.c \
	hanoivm_vm.c \
	main_driver.c

H_OBJS = \
	hvm_loader.h \
	disassembler.h \
	hanoivm_vm.h \
	main_driver.h

all: hanoivm

%.c %.h: %.cweb
	cweave $<
	ctangle $<

hanoivm: $(CWEB_SOURCES:.cweb=.c) $(H_OBJS)
	gcc -o hanoivm $(C_OBJS) -Wall -Wextra -O2

clean:
	rm -f *.c *.h *.tex *.log *.scn *.dvi *.pdf *.o hanoivm

.PHONY: all clean
