#!/bin/sh
# Axion Ecosystem Install Script with Git Integration and Macro Verification
#
# (Header omitted for brevity)
#
# Usage: ${0} <installation-directory>

if [ -z "$1" ]; then
    echo "usage: ${0} <location>" >&2
    exit 255
fi

INSTALL_DIR="$1"
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR" || exit 1

# Clone or update the HanoiVM repository from GitHub
if [ ! -d hanoivm ]; then
    echo "* Cloning the HanoiVM repository..."
    git clone --recursive https://github.com/copyl-sys/hanoivm.git
else
    echo "* Updating the HanoiVM repository..."
    cd hanoivm || exit 1
    git pull --rebase
    git submodule update --init --recursive
    cd ..
fi

cd hanoivm || exit 1

# Verify that build-all.cweb exists
if [ ! -f build-all.cweb ]; then
    echo "!!! build-all.cweb not found in the repository. Aborting." >&2
    exit 1
fi

# Extract the build script from build-all.cweb using ctangle.
echo "* Processing build-all.cweb with ctangle..."
ctangle build-all.cweb

# Check if the expected C source file was produced.
if [ ! -f build-all.c ]; then
    echo "!!! Extraction failed: build-all.c not found. Aborting." >&2
    exit 1
fi

# Verify that no interfering new macros appear in the generated build-all.c.
# For example, assume that our new macros are "@jit" and "@live-update".
if grep -q "@jit" build-all.c || grep -q "@live-update" build-all.c; then
    echo "!!! New CWEB macro(s) detected in build-all.c. Please update the macro processing."
    exit 1
fi

# Compile the extracted build-all.c into an installer executable.
echo "* Compiling build-all.c..."
gcc build-all.c -o build-all || { echo "!!! Compilation failed." >&2; exit 1; }

# Execute the built installer to complete the Axion ecosystem installation.
echo "* Running the build-all installer..."
./build-all

echo "Axion ecosystem installation completed successfully."
