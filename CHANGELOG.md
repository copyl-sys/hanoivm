## [v0.8] - 2025-03-26

### 🚀 Added

- **🧠 T243 and T729 Symbolic Execution Extensions**:
  - Introduced `advanced_ops_ext.cweb`, expanding the opcode layer to support:
    - Finite State Machines (`T243StateVector`)
    - Entropy-weighted symbolic AI dispatch (`T729Intent`)
    - FFT-enabled holomorphic tensor logic (`T729HoloTensor`)
    - Condition-aware AI meta-opcodes (`T729MetaOpcode`)

  - **New opcodes introduced:**
    - `OP_T243_STATE_ADV`: Symbolic FSM advancement for 243-state logic
    - `OP_T729_INTENT`: Semantic AI operation intent dispatcher
    - `OP_T729_HOLO_FFT`: FFT operation over complex ternary tensors
    - `OP_T729_META_EXEC`: Executes symbolic meta-opcode based on context, entropy, and state fingerprint

- **📦 Embedded Header Modules via `cweave`:**
  - `t243_ops.h` — FSM vector structure and API
  - `t729_intent.h` — Encodes symbolic intents with entropy awareness
  - `t729_holotensor.h` — Real/imaginary/phase tensor composition
  - `t729_metaopcode.h` — Stateful AI macro executor for dynamic opcode routing

- **📄 Manifest & Literate Documentation:**
  - Added `manifesto.cweb`: philosophical declaration, architecture index, full file listing
  - Serves as the recursive meta-root for the HanoiVM ecosystem

- **📚 Tier Architecture Documentation:**
  - Created `t243_t729.md` to explain advanced symbolic types with diagrams and use cases:
    - FSM execution in symbolic logic
    - T729Intent and entropy-based decision trees
    - FFT for ternary signal structures

- **📜 Metadata + Symbolic Telemetry Logs:**
  - All symbolic instructions now emit metadata entries in `axion.meta.json` including:
    - Opcode path
    - Execution tier
    - Entropy trace

- **🧪 CLI & Public Alpha Bundle:**
  - Packaged `Release-v0.8-Public-Alpha.zip` for public distribution
  - Includes compiler, VM, disassembler, recursive tier runner, and pattern engine
  - Ready for developer testing, research deployment, and symbolic hacking

- **🌀 Recursive Export Pipeline:**
  - Introduced `recursion_exporter.cweb` for exporting `.t81viz` recursion trace files
  - Includes Axion annotations, τ[27] entropy state, symbolic intent, and ternary stack traces

- **🖼️ Project Looking Glass (Initial):**
  - Created `FrameSceneBuilder.cweb`, a jMonkeyEngine-based 3D visualizer
  - Visualizes `.t81viz` files using geometry per tier (box, box, sphere for T81, T243, T729)
  - Includes color-coded ternary state rendering, Axion overlays, and HUD labels
  - Added `PulseControl` animation for entropy hotspots (Δτ > 0.5)

---

### 🔧 Changed

- **🌀 Symbolic Stack Promotion**:
  - VM now auto-promotes from T81 → T243 → T729 when:
    - Recursive depth crosses threshold
    - Entropy exceeds symbolic execution bounds
    - `OP_CALL` triggers `PROMOTE_THRESHOLD` via `ctx->call_depth`

- **🔐 AI Context Verification**:
  - All symbolic instructions now verify current mode (`MODE_T243` / `MODE_T729`)
  - Error messages suggest rollbacks or tier promotion via Axion

- **🧠 Opcode Dispatch Modularization**:
  - `evaluate_extended_opcode()` now modularly handles symbolic logic paths
  - Forward-compatible with future symbolic microkernel calls

---

### 🐞 Fixed

- **⚠️ Symbolic Entropy Overflow**:
  - Fixed bug in `t81_to_int()` for inputs > `T81_MAX`, which corrupted `T729Intent` weights

- **🧮 FSM Corruption (T243StateVector)**:
  - Prevented undefined behavior when advancing into unallocated transition maps
  - Runtime validation added for invalid signals (out of 0–242 range)

- **📉 HoloTensor Writeback**:
  - Fixed segmentation fault when FFT output pointer was NULL in `ctx->holo_output`

- **🪵 AI Meta Logging Edge Cases**:
  - Addressed case where `OP_T729_META_EXEC` produced malformed `axion.meta.json` entries on early returns

---

### 🔮 Notes

- This version introduces full symbolic stack tiers (T243, T729) and establishes the foundation for HanoiVM as a **literate recursive virtual machine with AI-first logic**.
- Looking Glass now has a visual foundation via `FrameSceneBuilder.cweb`.
- Future versions will expand `.t81` → `.hvm` REPL, mouse-hover introspection, optimization timeline overlays, and Axion streaming.

---

> _“This is not perfect. It is recursive.”_ — `manifesto.cweb`
