Here’s the updated **`README.md`** reflecting the recent v0.7 updates:

---

### ✅ `README.md`

```markdown
# **HanoiVM**

**HanoiVM** is a recursive, AI-augmented **ternary virtual machine** built on a symbolic base-81 logic architecture. It forms the execution core of the **Axion + T81Lang** ecosystem, supporting **recursive stack tiers**, **TISC instruction dispatch**, and **GPU-accelerated symbolic macros**. Designed for both research and future hardware acceleration, it demonstrates a full-stack ternary computing platform.

---

## 🔍 Features

- 🔺 **81-bit ternary operand architecture** (`uint81_t`)
- 🔁 **Recursive tiered stacks**:
  - `T81` — register logic
  - `T243` — BigInt symbolic math
  - `T729` — tensor AI macros
- 🧠 **Symbolic & AI-aware opcodes**:
  - `TNN_ACCUM`, `T81_MATMUL`, `RECURSE_FIB`, `RECURSE_FACT`
  - Axion signal hooks for real-time optimization & rollback
- 🎨 **T729Tensor engine**:
  - Operations: `DOT`, `TRANS`, `SLICE`, `RESHAPE`, `CLONE`, `PRINT`
- 🔢 **T243BigInt arithmetic**:
  - `ADD`, `MUL`, `TO_STRING`
- ⚙️ **Axion AI** integration:
  - NLP commands (`optimize`, `rollback`, `snapshot`)
  - GPU offload using CUDA/HIP for symbolic macros
- ⚡ **GAIA GPU backend**:
  - ROCm/HIP kernel `gaia_handle_request.cweb` for AMD GPUs
  - CUDA mirror for NVIDIA
- 🧬 **Symbolic pattern engine**:
  - Defined in `t81_patterns.cweb`, supports GAIA-based transformation
- 🔁 **Recursive pattern primitives**:
  - `t81recursion.cweb` implements core symbolic recursion logic
- 🪵 **Log viewer utility**:
  - `logviewer.cweb` provides Axion + runtime search/filtering
- 📄 **`.cweb` literate programming**:
  - Inline documentation + modular architecture
- 🧪 **Kernel-mode test harness** (`hanoivm-test.cweb`) via `debugfs`
- 📦 **CI-integrated** test and disassembly for `.hvm` bytecode
- 🧠 Full **TISC backend** support via `tisc_backend.cweb`
- 🔍 **Disassembler** with verbose T81 decoding and operand introspection

---

## 🗂️ Repository Structure

```bash
src/
├── hanoivm_vm.cweb           # Main interpreter
├── advanced_ops.cweb         # TNN + matrix ops + AI macros
├── t243bigint.cweb           # Recursive BigInt arithmetic
├── t729tensor.cweb           # Base-729 tensor engine
├── t81_patterns.cweb         # Symbolic transformation patterns (AI + GAIA aware)
├── t81recursion.cweb         # Recursive computation primitives
├── gaia_handle_request.cweb  # HIP backend for symbolic GPU ops
├── cuda_handle_request.cu    # CUDA backend (if enabled)
├── axion-ai.cweb             # Kernel AI logic + rollback
├── disassembler.cweb         # Bytecode disassembler
├── logviewer.cweb            # Log inspector for Axion + runtime metadata
├── recursive_tier_execution.cweb # Demo driver for tier transitions
├── tisc_backend.cweb         # TISC IR compiler and entropy analyzer

tests/
├── hanoivm-test.cweb         # Kernel module test suite via debugfs
├── test_advanced_hvm.cweb    # Generator for AI-annotated bytecode
├── t729tensor_to_string.cweb # Tensor serializer for logs/debug

scripts/
├── disasm_*.sh               # Disassembler test cases

docs/
├── ROADMAP.md
├── CHANGELOG.md

bazel/
├── BUILD                     # Bazel rules for VM, tests, and examples

README.md                     # You are here
```

---

## 🚀 Getting Started

### 🔧 Build

```bash
bazel build //...
```

### ✅ Run Tests

```bash
bazel test //:disasm_advanced_test
bazel test //:disasm_controlflow_test
bazel test //:disasm_logic_test
```

### 🧠 Kernel Module Test Harness

```bash
sudo insmod hanoivm-test.ko
cat /sys/kernel/debug/hanoivm-test
```

### 🔬 Tensor & Tier Demo

```bash
bazel run //:recursive_tier_execution -- --max-depth=36 --simulate-demotion
```

---

## 🧩 Axion AI + GAIA GPU Integration

- Send ternary macros to GPU via:
  - `cuda_handle_request.cu` for NVIDIA
  - `gaia_handle_request.cweb` via HIP for AMD
- Axion signals determine:
  - Pattern transformations
  - Rollback on entropy spikes
  - Promotion to higher tiers (T243, T729)

---

## 🧠 Symbolic Pattern Registry

Pattern logic is registered in `t81_patterns.cweb` and can be dynamically dispatched:

- `identity`
- `negate`
- `rotate`
- `zero`
- `gaia` — uses GPU for symbolic shift

Use `t81_apply_pattern_by_name()` or `t81_dispatch_pattern()` for AI-driven control.

---

## 📈 Project Status

✅ Recursive execution loop  
✅ Full T81/T243/T729 stack promotion logic  
✅ Axion AI integration and feedback signals  
✅ Tensor macro engine (T729Tensor) with slicing, transpose  
✅ T243BigInt arithmetic and stringification  
✅ Disassembler with T81-level verbosity and type introspection  
✅ GPU symbolic backends: CUDA + HIP  
✅ Symbolic recursion via `t81recursion.cweb`  
✅ Log viewer (`logviewer.cweb`) for AI event search  
✅ CI pipeline for AI macros, rollback, and validation  
🔜 T81Lang-to-TISC compiler toolchain  
🔜 Project Looking Glass 3D visualization

---

## 🔗 Related Projects

- [**Axion AI**](https://github.com/copyl-sys) — AI optimization kernel + rollback logic  
- **T81Lang** — Ternary-native language with JIT + AI patterns  
- [**Alexis Linux**](https://github.com/copyl-sys) — AI-native Linux distro for Axion/T81  
- **Project Looking Glass** — Future GUI: visual recursion and ternary stack views

---

## 📜 License

MIT License — see `LICENSE` for full terms.

> 🧠 “Recursion is not just a structure—it’s the soul of ternary.”

