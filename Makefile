# Makefile for HanoiVM

CWEB_SOURCES = \
	hvm_loader.cweb \
	disassembler.cweb \
	hanoivm_vm.cweb \
	main_driver.cweb \
	write_simple_add.cweb

C_OBJS = \
	hvm_loader.c \
	disassembler.c \
	hanoivm_vm.c \
	main_driver.c \
	write_simple_add.c

H_OBJS = \
	hvm_loader.h \
	disassembler.h \
	hanoivm_vm.h \
	main_driver.h \
	write_simple_add.h

all: hanoivm write_simple_add

%.c %.h: %.cweb
	cweave $<
	ctangle $<

hanoivm: $(CWEB_SOURCES:.cweb=.c) $(H_OBJS)
	gcc -o hanoivm hvm_loader.c disassembler.c hanoivm_vm.c main_driver.c -Wall -Wextra -O2

write_simple_add: write_simple_add.c write_simple_add.h
	gcc -o write_simple_add write_simple_add.c -Wall -Wextra -O2

run: write_simple_add hanoivm
	./write_simple_add
	./hanoivm simple_add.hvm --disasm

clean:
	rm -f *.c *.h *.tex *.log *.scn *.dvi *.pdf *.o hanoivm write_simple_add simple_add.hvm

.PHONY: all clean run
