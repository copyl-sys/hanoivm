# Makefile for HanoiVM

CWEB_SOURCES = \
	hvm_loader.cweb \
	disassembler.cweb \
	hanoivm_vm.cweb \
	main_driver.cweb \
	write_simple_add.cweb \
	t81_test_suite.cweb

C_OBJS = \
	hvm_loader.c \
	disassembler.c \
	hanoivm_vm.c \
	main_driver.c \
	write_simple_add.c \
	t81_test_suite.c

H_OBJS = \
	hvm_loader.h \
	disassembler.h \
	hanoivm_vm.h \
	main_driver.h \
	write_simple_add.h \
	t81_test_suite.h

all: hanoivm write_simple_add t81_test_suite

%.c %.h: %.cweb
	cweave $<
	ctangle $<

hanoivm: hvm_loader.c disassembler.c hanoivm_vm.c main_driver.c
	gcc -o hanoivm hvm_loader.c disassembler.c hanoivm_vm.c main_driver.c -Wall -Wextra -O2

write_simple_add: write_simple_add.c
	gcc -o write_simple_add write_simple_add.c -Wall -Wextra -O2

t81_test_suite: t81_test_suite.c
	gcc -o t81_test_suite t81_test_suite.c -Wall -Wextra -O2

run-test-suite: t81_test_suite
	./t81_test_suite

run: write_simple_add hanoivm
	./write_simple_add
	./hanoivm simple_add.hvm --disasm

clean:
	rm -f *.c *.h *.tex *.log *.scn *.dvi *.pdf *.o hanoivm write_simple_add t81_test_suite simple_add.hvm test_all_types.hvm

.PHONY: all clean run run-test-suite
