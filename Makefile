# Makefile for HanoiVM – Extract and Compile CWEB Modules into Rust Crate

CWEB = cweave
TANGLE = ctangle
CWEB_FILES = libt81.cweb libt243.cweb libt729.cweb hanoivm-core.cweb axion-ai.cweb
RST_DIR = src
EXTRACTED_RS = $(CWEB_FILES:.cweb=.rs)
PACKAGE_NAME = hanoivm

all: extract build

# Step 1: Extract .rs source files from CWEB
extract:
	@mkdir -p $(RST_DIR)
	@for f in $(CWEB_FILES); do \
		echo "Extracting $$f..."; \
		ctangle $$f && mv $$f.c $(RST_DIR)/$${f%.cweb}.rs; \
	done

# Step 2: Compile with Cargo
build:
	cargo build

# Clean output
clean:
	rm -rf target $(RST_DIR)/*.rs

# View output
run:
	cargo run

# Check formatting
fmt:
	cargo fmt

# Test
test:
	cargo test
