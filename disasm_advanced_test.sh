#!/bin/bash
# disasm_advanced_test.sh — CI test for HanoiVM disassembler

set -euo pipefail

# Path to compiled disassembler binary
DISASM=./bazel-bin/disassembler/disassembler
TEST_HVM=tests/test_advanced.hvm

# Run disassembler and capture output
OUTPUT=$($DISASM $TEST_HVM)
echo "$OUTPUT"

# Assert that advanced ops are found
if echo "$OUTPUT" | grep -q "T81_MATMUL" && echo "$OUTPUT" | grep -q "TNN_ACCUM"; then
  echo "PASS: Advanced opcodes found"
  exit 0
else
  echo "FAIL: Expected advanced ops not found"
  exit 1
fi
