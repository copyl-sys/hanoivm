# 🗼 HanoiVM

**Recursive Ternary Virtual Machine for Post-Binary Symbolic Computation**

> _"Inspired by the Tower of Hanoi. Powered by trits, recursion, and AI."_

---

## 🚀 Overview

**HanoiVM** is a next-generation virtual machine that executes symbolic ternary bytecode across three recursive radix layers:  
- `T81` (Base-81): 4-trit precision  
- `T243` (Base-243): 5-trit symbolic stack  
- `T729` (Base-729): 6-trit macro operations  

Designed for high-efficiency symbolic computing, recursive logic modeling, and integration with AI-powered modules, **HanoiVM** is the foundation of a post-binary computing stack.

---

## 🧠 Key Features

- 🧮 **Recursive Ternary Arithmetic** (`T81`, `T243`, `T729`)
- 📦 **Symbolic Stack Engine** for deeply nested operations
- 🤖 **Axion-AI Hook Integration** for optimization, prediction, and entropy-based logic
- ⚙️ **GPU Dispatch Layer** with CUDA stubs (`cuda_handle_request.cu`)
- 🔁 **TISC-Compatible** backend support for future ternary compilers
- 📄 **CWEB Literate Programming Format** for source transparency and AI reasoning
- 🔬 **Modular Design** for runtime, core VM, and ternary arithmetic isolation

---

## 🗂 Directory Structure

| File/Folder             | Purpose |
|-------------------------|---------|
| `hanoivm-core.cweb`     | Core VM logic: opcode definitions, registers, memory |
| `hanoivm_vm.cweb`       | Execution engine: parses `.hvm` bytecode |
| `hanoivm-runtime.cweb`  | Runtime environment: symbol table, stack frames |
| `t81.cweb` / `t243.cweb` / `t729.cweb` | Ternary arithmetic and data types |
| `ai_hook.cweb`          | Axion-AI logic bridge for feedback and decision-making |
| `axion-ai.cweb`         | Placeholder for AI runtime engine |
| `cuda_handle_request.cu`| CUDA entry point (optional acceleration) |
| `Makefile`              | Build automation |
| `Cargo.toml`            | Rust integration (future compiler/assembler interface) |

---

## 🛠️ Build Instructions

### Requirements

- `make`
- `gcc` / `clang`
- `nvcc` (for optional CUDA support)
- `cweb` tools (or preprocessor)

### Compile

```bash
make
