#!/bin/bash
# disasm_controlflow_test.sh — CI test for HanoiVM control flow disassembly

set -euo pipefail

DISASM=./bazel-bin/disassembler/disassembler
TEST_HVM=tests/test_controlflow.hvm

OUTPUT=$($DISASM $TEST_HVM)
echo "$OUTPUT"

# Check for key control flow instructions in disassembly
if echo "$OUTPUT" | grep -q "JZ" && \
   echo "$OUTPUT" | grep -q "JMP" && \
   echo "$OUTPUT" | grep -q "CALL" && \
   echo "$OUTPUT" | grep -q "RET"; then
  echo "PASS: Control flow opcodes detected"
  exit 0
else
  echo "FAIL: Missing expected control flow opcodes"
  exit 1
fi
