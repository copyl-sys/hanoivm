# HanoiVM Roadmap

HanoiVM is a recursive ternary virtual machine designed to support T81, T243, and T729 stack architectures. It is a cornerstone of the larger unified ternary computing ecosystem, including T81Lang, Axion AI, and Alexis Linux.

---

## ✅ Phase 0: Bootstrapping

- [x] Create base repository structure
- [x] Define T81 stack and recursion logic
- [ ] Implement CLI stub for `hanoivm`

---

## 🧱 Phase 1: Core Virtual Machine (T81)

### Stack Logic
- [ ] Finalize T81 stack data type
- [ ] Implement core instructions:
  - [ ] `PUSH81`, `POP81`
  - [ ] `ADD81`, `SUB81`, `MUL81`, `DIV81`
  - [ ] `JMP`, `CALL`, `RET`, `NOP`
  - [ ] Ternary conditionals: `IFZ`, `IFP`, `IFN`

### Virtual CPU
- [ ] Simulate ternary registers (`τ0` to `τ26`)
- [ ] Reserve `τ27` for Axion AI optimization loop
- [ ] Implement mode flags for T81 → T243 promotion

---

## 🧬 Phase 2: Recursive Expansion (T243 & T729)

- [ ] Implement T243 stack behavior
- [ ] Support automatic promotion/demotion between stack tiers
- [ ] Define opcode transitions across modes
- [ ] Initialize T729 large-state mode (deep recursion + matrix use)

---

## 🧠 Phase 3: Language Integration

- [ ] Stub interpreter for `.t81` source files
- [ ] Add REPL for live code execution in HanoiVM
- [ ] Define T81Lang → TISC Assembly compilation path
- [ ] Include basic T81Lang stdlib examples

---

## ⚡ Phase 4: Axion AI Integration

- [ ] Log VM runtime data for Axion optimization
- [ ] Expose stack metrics (depth, opcode frequency, recursion states)
- [ ] Support metadata output in JSON/XML for Axion
- [ ] Allow Axion to inject optimizations at runtime via `τ27`

---

## 🎮 Phase 5: User Tools & Dev Experience

- [ ] Command-Line Interface (`hanoivm`)
  - [ ] `--mode=t81|t243|t729`
  - [ ] `--exec program.hvm`
  - [ ] `--debug`, `--trace`, `--benchmark`

- [ ] Add test suite for VM operations
- [ ] Add `Makefile` for build and install
- [ ] Document developer setup and contribution guide

---

## 🔮 Phase 6: Advanced Features

- [ ] GPU acceleration bridge (Axion-GAIA interface)
  - [ ] Ternary dot product support
  - [ ] Matrix expansion for TNN (Ternary Neural Networks)
- [ ] Output live state for visualization in Project Looking Glass
- [ ] Connect HanoiVM with Alexis Linux’s scheduler for live experimentation

---

## 📦 Packaging & Distribution

- [ ] Release v0.1: T81 mode, CLI, basic language support
- [ ] Release v0.5: Full T243 recursion and Axion logging
- [ ] Release v1.0: Complete VM with T729, GPU hooks, and AI feedback

---

## 🌐 Related Projects

- [Alexis Linux](https://github.com/copyl-sys) — AI-native ternary OS
- T81Lang — High-level ternary language for HanoiVM
- Axion — AI package manager and optimization engine
- Project Looking Glass — 3D environment for ternary visualization

---

> 🧠 *“Recursion is not just a structure—it’s the soul of ternary.”*

