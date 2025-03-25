# 🗺️ HanoiVM — Project Roadmap | Copyleft Systems

**HanoiVM** is a recursive, AI-augmented ternary virtual machine supporting the stack-tiered execution of `T81`, `T243`, and `T729` logic layers. It anchors the **T81Lang**, **Axion AI**, and **Alexis Linux** ecosystem, targeting symbolic computation, entropy-aware logic, and ternary-aware programming.

---

## ✅ Phase 0: Bootstrapping

- [x] Repository + CI initialization
- [x] T81 operand architecture
- [x] Recursive stack setup
- [x] Base disassembler, assembler, and interpreter loop
- [x] Literate `.cweb` toolchain established

---

## 🧱 Phase 1: Core Virtual Machine (T81)

### Stack Logic & Execution
- [x] `uint81_t` stack structure and macros
- [x] T81 stack push/pop logic
- [x] Arithmetic & control opcodes:
  - `PUSH81`, `POP81`, `ADD81`, `SUB81`, `MUL81`, `DIV81`
  - `CMP3`, `NEG`, `ABS`, `JMP`, `CALL`, `RET`, `NOP`

### Virtual CPU Context
- [x] Recursive execution loop with mode awareness
- [x] `τ` register space simulation
- [x] `τ[27]` reserved for Axion AI signals
- [x] Stack depth triggers promotion (`PROMOTE_THRESHOLD`)
- [x] Initial `evaluate_opcode()` engine complete

---

## 🧬 Phase 2: Recursive Expansion (T243 + T729)

- [x] `T243BigInt`: Recursive ternary integer arithmetic
- [x] `T729Tensor`: Ternary tensor manipulation API
- [x] Tensor primitives: `clone`, `slice`, `reshape`, `transpose`, `contract`, `print`
- [x] `advanced_ops.cweb`: TNN, MATMUL, recursive operations

### ✅ Symbolic AI Extensions
- [x] `T243StateVector`: FSM vector for AI execution state tracking
- [x] `T729Intent`: Symbolic instruction + entropy weighting
- [x] `T729MetaOpcode`: Conditional macro execution based on state + entropy
- [x] `T729HoloTensor`: Real/imaginary/phase tensor for FFT ops

### ✅ Symbolic Opcode Integration
- [x] `OP_T243_STATE_ADV`: FSM advancement (T243)
- [x] `OP_T729_INTENT`: Entropy-weighted symbolic dispatch (T729)
- [x] `OP_T729_HOLO_FFT`: Holomorphic FFT macro
- [x] `OP_T729_META_EXEC`: Symbolic opcode remapping based on AI


---

## 🧠 Phase 3: Compiler & Execution Toolchain

- [x] `T81Lang` grammar specification (`.ebnf`)
- [x] Lexer + Parser (AST via `t81lang_parser.cweb`)
- [x] Semantic analyzer with symbol table + scope
- [x] Intermediate Representation (IR) generator
- [x] `.hvm` emitter for symbolic bytecode
- [x] HVM interpreter for executing `.hvm` output
- [x] Full CLI compiler entrypoint: `t81lang_compiler.cweb`
---

## 🧠 Phase 3: Language Integration

- [x] T81Lang grammar spec
- [x] `.t81` → `.hvm` compiler pipeline
- [x] T81Lang REPL + CLI interaction model
- [x] TISC Intermediate Representation (IR)
- [x] Standard library definitions (`tisc_stdlib.cweb`)
- [x] Compiler backend + optimizer (via `tisc_backend.cweb`)

---

## ⚡ Phase 4: Axion AI Integration

- [x] `axion-ai.cweb` — AI kernel driver for optimization, rollback
- [x] Axion NLP command hooks: `optimize`, `rollback`, `snapshot`
- [x] Entropy metrics + feedback control via `τ[27]`
- [x] Symbolic pattern feedback via `t81_patterns.cweb`
- [x] Logging: `axion.meta.json` with entropy-based dispatch tracing
- [x] Promotion/demotion path adjustment based on signal analysis

---

## 🎮 Phase 5: Developer Tooling & User Experience

- [x] Modular literate `.cweb` codebase
- [x] `README.md`, `manifesto.cweb`, `t243_t729.md` documentation
- [x] `disassembler.cweb`: Verbose `.hvm` analysis and introspection
- [x] `hanoivm-test.cweb`: Kernel-space test suite via `debugfs`
- [x] `recursive_tier_execution.cweb`: Stack simulation for T81 → T243 → T729
- [x] `logviewer.cweb`: Axion log inspection tool
- [x] Tier-aware introspection of symbolic data (BigInt, Tensor, FSM)
- [x] `recursion_exporter.cweb`: JSON export with Axion + tier metadata
- [x] `FrameSceneBuilder.cweb`: 3D renderer for recursion visualization via jMonkeyEngine

---

## 🔮 Phase 6: Advanced Logic and Visualization

- [x] GPU backends:
  - `gaia_handle_request.cweb` (HIP/ROCm)
  - `cuda_handle_request.cu` (CUDA)
- [x] FFT: `t729_holotensor.h` interface and Axion dispatch
- [x] Embedded `.h` headers extracted from `.cweb` modules
- [x] `PulseControl` animation system for entropy Δτ hot spots
- [ ] `hipGraphLaunch` / `cuGraphExec` macro pipelines
- [ ] Symbolic AI Graph IR (`T729LogicGraph`)
- [ ] Metadata blockchain for `.cweb` audit/logging integrity
- [ ] Project Looking Glass full interface:
  - HUD overlays
  - Tooltip and inspection engine
  - Optimization timeline
  - Axion live update streaming

---

## 📦 Packaging & Distribution

- [x] `.cweb` package architecture + literate build flow
- [x] Axion-managed modularization for >50MB packages
- [x] Version-controlled `Release-v0.8-Public-Alpha.zip`
- [ ] `.cwebpkg` manifest system for T81Lang-to-binary bundles
- [ ] GitHub CI/CD release automation
- [ ] Live documentation + demo packages for `hvm`, `t81`, and `.cweb` binaries

---

## 🔗 Related Projects

- [Alexis Linux](https://github.com/copyl-sys) — AI-native ternary OS
- [T81Lang](https://github.com/copyl-sys) — Symbolic ternary language
- [Axion AI](https://github.com/copyl-sys) — Kernel AI for optimization/entropy feedback
- **Project Looking Glass** — 3D ternary visualizer + symbolic trace system

---

> 🧠 *“Recursion is not just a structure — it’s the soul of ternary.”*

---

### 🔄 v0.8 Summary (March 2025)

- ✅ Symbolic execution engine via `advanced_ops_ext.cweb`
- ✅ T243/T729 types: FSMs, AI opcodes, FFT tensors
- ✅ Axion + GAIA GPU symbolic dispatch
- ✅ Full tier introspection + entropy-based tier transitions
- ✅ Modular `.cweb` headers + literate tooling infrastructure
- ✅ New docs: `manifesto.cweb`, `t243_t729.md`, updated `README.md`, `STATUS.md`, `CHANGELOG.md`
- ✅ Initial GUI implementation for recursion via `FrameSceneBuilder.cweb`
- 🔜 Next phase: REPL, LLVM IR, mouse-hover controls, Axion streaming
