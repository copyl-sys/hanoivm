# Makefile for Modular HanoiVM Project using CWEB

# ---- Config ----

CWEB_SOURCES := hanoivm_cli.cweb t81_stack.cweb hvm_loader.cweb ai_hook.cweb
C_SOURCES    := $(CWEB_SOURCES:.cweb=.c)
OBJECTS      := $(C_SOURCES:.c=.o)
TARGET       := hanoivm

CC           := gcc
CFLAGS       := -Wall -O2

# ---- Default ----

.PHONY: all clean run doc

all: $(TARGET)

# ---- Tangle all .cweb files ----

%.c: %.cweb
	ctangle $<

# ---- Compile and link ----

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS)

# ---- Run the VM with debug ----

run: $(TARGET)
	./$(TARGET) --mode=t81 --debug

# ---- Weave docs for each .cweb into PDF ----

doc: $(CWEB_SOURCES:.cweb=.pdf)

%.tex: %.cweb
	cweave $<

%.pdf: %.tex
	pdftex $*

# ---- Cleanup ----

clean:
	rm -f $(TARGET) *.c *.o *.pdf *.log *.tex *.toc *.scn
