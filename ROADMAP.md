# HanoiVM Roadmap

HanoiVM is a recursive ternary virtual machine designed to support T81, T243, and T729 stack architectures. It is a cornerstone of the larger unified ternary computing ecosystem, including T81Lang, Axion AI, and Alexis Linux.

---

## ✅ Phase 0: Bootstrapping

- [x] Create base repository structure
- [x] Define T81 stack and recursion logic
- [x] Create CI matrix and test infrastructure

---

## 🧱 Phase 1: Core Virtual Machine (T81)

### Stack Logic
- [x] T81 stack push/pop logic
- [x] uint81_t operand handling (81-bit)
- [x] Implement core instructions:
  - [x] `PUSH81`, `POP81`
  - [x] `ADD81`, `SUB81`, `MUL81`, `DIV81`
  - [x] `JMP`, `CALL`, `RET`, `NOP`
  - [x] `CMP3`, `NEG`, `ABS`

### Virtual CPU
- [x] τ-register simulation
- [x] `τ27` reserved for Axion AI
- [ ] Mode flags for T81 → T243 promotion

---

## 🧬 Phase 2: Recursive Expansion (T243 & T729)

- [ ] Implement T243 recursion stack tier
- [ ] Recursive jump depth → T729 stack expansion
- [ ] Dynamic stack tier promotion/demotion logic
- [ ] Instruction class remapping for nested mode

---

## 🧠 Phase 3: Language Integration

- [ ] Parser for `.t81` source files
- [ ] REPL for live interaction with VM
- [ ] T81Lang → TISC Assembly compiler backend
- [ ] T81Lang stdlib + sample programs

---

## ⚡ Phase 4: Axion AI Integration

- [x] Axion AI signal hooks via `axion_signal(opcode)`
- [x] Logging via `axion_log()`
- [x] τ[27] signal feedback support
- [ ] JSON/XML metadata output for telemetry
- [ ] Axion symbolic trace export

---

## 🎮 Phase 5: User Tools & Dev Experience

- [x] Literate programming with `.cweb`
- [x] Disassembler: opcode_name() integration
- [x] Bazel test suite w/ disasm output validation
- [x] Generator programs for .hvm test vectors
- [ ] CLI stub with modes + trace options
- [ ] `Makefile` for build convenience

---

## 🔮 Phase 6: Advanced Features

- [ ] Axion-GAIA GPU bridge stub (TNN, T81_MATMUL vectorization)
- [ ] Project Looking Glass visualization export
- [ ] Runtime introspection via symbolic disassembly

---

## 📦 Packaging & Distribution

- [ ] v0.1: T81 core, CLI, disasm, CI suite
- [ ] v0.5: T243 recursion, Axion tracing, REPL
- [ ] v1.0: T729 full recursion, GPU bridge, .t81 compiler

---

## 🔗 Related Projects

- [Alexis Linux](https://github.com/copyl-sys) — AI-native ternary OS
- T81Lang — Language for symbolic ternary logic
- Axion — AI optimization engine and package manager
- Project Looking Glass — 3D ternary visualization shell

---

> 🧠 *“Recursion is not just a structure—it’s the soul of ternary.”*
