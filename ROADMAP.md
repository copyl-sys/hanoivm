# **HanoiVM — Project Roadmap**

HanoiVM is a recursive ternary virtual machine designed to support **T81**, **T243**, and **T729** stack architectures. It is a cornerstone of the larger unified ternary computing ecosystem, including **T81Lang**, **Axion AI**, and **Alexis Linux**.

---

## ✅ Phase 0: Bootstrapping

- [x] Create base repository structure  
- [x] Define T81 stack and recursion logic  
- [x] Create CI matrix and test infrastructure  

---

## 🧱 Phase 1: Core Virtual Machine (T81)

### Stack Logic
- [x] T81 stack push/pop logic  
- [x] `uint81_t` operand handling (81-bit)  
- [x] Implement core instructions:  
  - [x] `PUSH81`, `POP81`  
  - [x] `ADD81`, `SUB81`, `MUL81`, `DIV81`  
  - [x] `JMP`, `CALL`, `RET`, `NOP`  
  - [x] `CMP3`, `NEG`, `ABS`  

### Virtual CPU
- [x] `τ`-register simulation  
- [x] `τ27` reserved for Axion AI  
- [x] Mode flags for T81 → T243 promotion  
  - [x] Added `mode_flags` bitfield to `HVMContext`  
  - [x] Detect CALL stack depth threshold → set `MODE_PROMOTABLE`  
  - [x] Axion runtime promotion trigger via `τ27` feedback  

---

## 🧬 Phase 2: Recursive Expansion (T243 & T729)

- [x] Implement `T243BigInt` logic and VM opcodes  
  - [x] `OP_T243_ADD`, `OP_T243_MUL`, `OP_T243_PRINT`  
- [x] Implement `T729Tensor` engine and VM opcodes  
  - [x] `OP_T729_DOT`, `OP_T729_TRANS`, `OP_T729_SLICE`, `OP_T729_PRINT`  
- [x] Literate `.cweb` modules for all tensor ops:  
  - [x] `t729tensor_to_string`, `transpose`, `reshape`, `slice`  
- [x] Loader for VM test programs: `t729tensor_loader.cweb`  
- [x] Recursive stack promotion/demotion logic (T81 ↔ T243 ↔ T729)  
  - [x] Instruction class remapping for nested modes  
  - [x] `promote_to_t243()` utility  
  - [x] Log tier changes in disassembler trace  

---

## 🧠 Phase 3: Language Integration

- [x] Parser for `.t81` source files  
- [x] REPL for live interaction with VM  
- [x] `T81Lang` → `TISC Assembly` compiler backend  
- [x] `T81Lang` stdlib + sample programs  

---

## ⚡ Phase 4: Axion AI Integration

- [x] Axion AI signal hooks via `axion_signal(opcode)`  
- [x] Logging via `axion_log()`  
- [x] `τ[27]` signal feedback support  
- [x] JSON/XML metadata output for telemetry  
- [x] Axion symbolic trace export  
- [x] Dynamic **AI optimizations** for ternary operations (via `axion_tbin_execute`)  
- [x] **Rollback** mechanism triggered by Axion AI anomaly detection  

---

## 🎮 Phase 5: User Tools & Dev Experience

- [x] Literate programming with `.cweb`  
- [x] Disassembler: `opcode_name()` integration  
- [x] Bazel test suite with `.hvm` disasm validation  
- [x] Generator programs for `.hvm` test vectors  
- [x] CLI stub with execution modes + tracing options  
- [x] `Makefile` for quick build + test automation  

---

## 🔮 Phase 6: Advanced Features

- [ ] Axion-GAIA GPU bridge (TNN, matrix/vector acceleration)  
- [ ] Project Looking Glass: visualization export of ternary stack + ops  
- [ ] Runtime introspection + symbolic disassembly browser  

---

## 📦 Packaging & Distribution

- [ ] **v0.1** — T81 core, CLI, disassembler, CI suite  
- [ ] **v0.5** — T243 recursion, Axion AI trace mode, REPL  
- [ ] **v1.0** — T729 tensor recursion, GPU bridge, `.t81` compiler  

---

## 🔗 Related Projects

- [Alexis Linux](https://github.com/copyl-sys) — AI-native ternary OS  
- **T81Lang** — Symbolic ternary programming language  
- **Axion** — AI optimization engine and ternary package manager  
- **Project Looking Glass** — 3D ternary visualization environment  

---

> 🧠 *“Recursion is not just a structure — it’s the soul of ternary.”*

---

### Updates Summary:

1. **Axion AI** integration has moved from **phase 4** into full AI optimizations for ternary operations and rollback capabilities.
2. The **recursive stack promotion/demotion logic** for **T81**, **T243**, and **T729** is now complete, supporting dynamic stack transitions.
3. **TISC Compiler Backend** for **T81Lang** has been integrated, making the transition to TISC assembly functional with support for ternary operations.
4. The **T729 Tensor Engine** and **T243BigInt** ops have been fully implemented, with recursive tensor operations now part of the ongoing milestone.

---

This updated roadmap accurately reflects the significant progress made in both the stack logic and TISC compiler backend, alongside the continued advancement of **Axion AI** and the recursive expansion into **T243** and **T729**.
