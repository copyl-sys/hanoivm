# Makefile for HanoiVM + Axion Ecosystem

CWEB_SOURCES = \
	hvm_loader.cweb \
	disassembler.cweb \
	hanoivm_vm.cweb \
	main_driver.cweb \
	write_simple_add.cweb \
	t81_test_suite.cweb

C_OBJS = $(CWEB_SOURCES:.cweb=.c)
H_OBJS = $(CWEB_SOURCES:.cweb=.h)

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

run: write_simple_add hanoivm
	./write_simple_add
	./hanoivm simple_add.hvm --disasm

run-test-suite: t81_test_suite
	./t81_test_suite

ghidra-test: t81_test_suite
	./t81_test_suite
	ghidra_disasm_plugin test_all_types.hvm > ghidra_output.log
	@echo "[✓] Disassembled test_all_types.hvm to ghidra_output.log"

modules:
	$(MAKE) -f build-all.cweb

check: all run-test-suite ghidra-test
	@echo "[✓] Full build + test + disasm check completed"

clean:
	rm -f *.c *.h *.tex *.log *.scn *.dvi *.pdf *.o \
	      hanoivm write_simple_add t81_test_suite \
	      simple_add.hvm test_all_types.hvm ghidra_output.log

.PHONY: all clean run run-test-suite modules ghidra-test check
