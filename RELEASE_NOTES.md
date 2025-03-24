# HanoiVM v0.1.0-alpha — Tensor Tier Activated

We're thrilled to announce the **v0.1.0-alpha** milestone for HanoiVM, marking the successful integration of **T729Tensor** functionality and the foundational build-out of our **recursive ternary virtual machine**.

---

## 🆕 New in This Release

### 🧠 Base-729 Tensor Engine
- Added support for `T729Tensor` operations:
  - `OP_T729_DOT` — dot product / contraction
  - `OP_T729_TRANS` — 2D transpose
  - `OP_T729_SLICE` — dimension-aware slicing
  - `OP_T729_PRINT` — debug-formatted tensor inspection

### 🧩 Literate `.cweb` Modules
- Modularized tensor logic:
  - `t729tensor_to_string.cweb`
  - `t729tensor_transpose.cweb`
  - `t729tensor_reshape.cweb`
  - `t729tensor_slice.cweb`
- Fully compliant with literate sectioning for Axion AI traceability

### 🧪 Test Infrastructure
- New `t729tensor_loader.cweb` loader and runner
- Pushes test tensors onto VM stack and executes live
- Aligned with Axion's `τ27` optimization loop

---

## 🔧 Improvements
- Stack-based tensor op dispatch in `hanoivm_vm.cweb`
- Symbolic tracing via Axion for each opcode
- Stack state preserved post-`PRINT`

---

## 🔮 Coming Next
- Operand-fed slicing (dim/start/end from bytecode stream)
- `OP_T729_RESHAPE` opcode
- `.hvm` bytecode test generator for full tensor workflows
- T81Lang parsing + `.t81` → `.hvm` compiler backend

---

> 🧠 “Recursion is not just a structure — it’s the soul of ternary.”
