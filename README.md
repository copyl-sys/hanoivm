Here’s the updated `README.md` reflecting the latest developments and changes in the HanoiVM project:

---

# HanoiVM

HanoiVM is a **recursive ternary virtual machine** built to explore symbolic computing using base-81 logic. Designed as part of the broader **Axion + T81Lang** ecosystem, HanoiVM simulates a **Ternary Instruction Set Computer (TISC)** with support for **AI integration**, **ternary recursion**, and **future hardware acceleration**.

---

## Features

- 🔺 **81-bit ternary operand architecture** (`uint81_t`)
- 🔁 **Recursive stack modes** for `T81`, `T243`, and `T729`
- 🧠 **Symbolic opcodes for AI**, including:
  - `TNN_ACCUM` — ternary neural accumulation
  - `T81_MATMUL` — ternary matrix multiply
- 🧩 **T729Tensor engine** for base-729 tensor manipulation:
  - `OP_T729_DOT`, `OP_T729_TRANS`, `OP_T729_SLICE`, `OP_T729_PRINT`
- 🔢 **T243BigInt arithmetic**:
  - `OP_T243_ADD`, `OP_T243_MUL`, `OP_T243_PRINT`
- ⚙️ **AI integration** for dynamic optimizations, rollback mechanisms, and feedback loops via **Axion AI**
- 📄 **`.cweb` literate programming format**:
  - Modular, readable source code + inline docs
- 🧪 **CI-integrated test suite** with `.hvm` bytecode disassembler
- 🖥️ **T81Lang** integration for symbolic ternary language and **TISC Assembly** backend
- 🛠️ **Project Looking Glass**: 3D visualization of ternary stack + operations (in development)
- ⚡ Designed to connect with **Axion AI**, **T81Lang**, and **Project Looking Glass**

---

## Repository Structure

```bash
src/                    # Core VM engine and modules
├── hanoivm_vm.cweb     # Main VM execution loop
├── advanced_ops.cweb   # AI + symbolic opcode definitions
├── t243bigint.cweb     # Base-243 BigInt logic
├── t729tensor_*.cweb   # Base-729 tensor ops (dot, trans, reshape, slice)
├── disassembler.cweb   # Pretty-print .hvm bytecode

tests/                  
├── t729tensor_loader.cweb # Loader for test tensors
├── test_tensor.hvm     # Test vector for T729 stack ops

scripts/                # CI test validators
├── disasm_*.sh         # grep-based assertion tests

BUILD                   # Bazel build + test logic
ci.yaml                 # GitHub Actions CI config
README.md               # This file
ROADMAP.md              # Project roadmap & milestones
```

---

## Getting Started

### Build VM + Tools

```bash
bazel build //...
```

### Run All Tests

```bash
bazel test //:disasm_advanced_test
bazel test //:disasm_controlflow_test
bazel test //:disasm_logic_test
```

### Manual Tensor Test

```bash
bazel run //tests:t729tensor_loader
```

---

## Project Status

✅ **Core VM + stack ops** integrated  
✅ **Symbolic AI opcodes** implemented  
✅ **Disassembler + CI test suite** active  
✅ **Base-243 BigInt ops** supported  
✅ **Base-729 Tensor ops** (`DOT`, `TRANS`, `SLICE`, `PRINT`) implemented  
✅ **`.cweb` literate modules** for all features  
✅ **Recursive stack promotion/demotion** (T81 ↔ T243 ↔ T729) fully implemented  
✅ **Axion AI integration** for dynamic optimizations and rollback  
✅ **T81Lang** → **TISC Assembly** compiler backend  
🔄 `.hvm` bytecode test compiler for T729 ops in progress  
🔜 Full **T81Lang** + `.t81` source-to-bytecode compiler  
🔜 **Project Looking Glass** visualization export  

---

## Related Projects

- [Axion AI](https://github.com/copyl-sys) — Kernel-level AI optimizer for system calls and packages  
- **T81Lang** — High-level ternary language with AI-native features  
- [Alexis Linux](https://github.com/copyl-sys) — A modern, AI-native operating system for Axion + HanoiVM  
- **Project Looking Glass** — 3D ternary visualization environment  

---

## License

MIT License — see LICENSE file for details

> 🧠 “Recursion is not just a structure—it’s the soul of ternary.”

---

This updated `README.md` includes **Axion AI** integration, the **recursive stack operations**, **TISC compiler backend**, and other recent advancements in HanoiVM, reflecting its evolving capabilities and current project milestones.
