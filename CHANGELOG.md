## [v0.8] - 2025-03-26

### Added

- **T243 and T729 Execution Extensions**:
  - Introduced `advanced_ops_ext.cweb`, expanding the opcode layer with FSM and symbolic AI support.
  - New opcodes:
    - `OP_T243_STATE_ADV`: Advances a 243-state finite state machine (`T243StateVector`)
    - `OP_T729_INTENT`: Dispatches entropy-weighted symbolic instructions (`T729Intent`)
    - `OP_T729_HOLO_FFT`: Applies FFT on ternary holomorphic tensors (`T729HoloTensor`)
    - `OP_T729_META_EXEC`: Executes condition-based AI meta-instructions (`T729MetaOpcode`)

- **New Embedded Header Modules**:
  - Added embedded `.h` interfaces extracted via `cweave`:
    - `t243_ops.h`: Defines `T243StateVector` and FSM advancement API
    - `t729_intent.h`: Defines `T729Intent` structure and dispatch mechanism
    - `t729_holotensor.h`: Tensor type with real, imaginary, and phase ternary dimensions
    - `t729_metaopcode.h`: Symbolic meta-opcode executor with embedded condition logic

- **README.md Enhancements**:
  - Documented new opcodes and FSM/symbolic execution tiers
  - Updated structure and mode descriptions for `T243` and `T729` features

- **T243/T729 Documentation**:
  - Created `t243_t729.md` outlining the usage, structure, and integration of advanced symbolic types
  - Includes rationale and examples for symbolic AI decision trees, FFT applications, and state logic

- **Opcode Evaluation Extensions**:
  - Updated `evaluate_opcode()` dispatch path to include `evaluate_extended_opcode()` for seamless symbolic tier integration
  - Added entropy-aware promotion hooks to handle symbolic pattern execution and AI-triggered recursion

---

### Changed

- **Symbolic Execution Stack Promotion**:
  - Promoting into `MODE_T243` or `MODE_T729` now enables FSM control or symbolic AI macros automatically
  - Execution paths retain entropy metadata to inform `T729Intent` routing and meta-opcode resolution

- **Interpreter Mode Awareness**:
  - All symbolic opcodes validate execution context (`ctx->mode`) before operation
  - Errors and warnings log symbolic tier violations with suggestions for Axion rollback or promotion

- **AI Logging Path (Axion)**:
  - Symbolic dispatch logs via `OP_T729_INTENT`, `OP_T729_META_EXEC`, and `OP_T729_HOLO_FFT` now visible in `axion.meta.json`
  - Verbosity level adapts based on signal entropy and symbolic decision paths

---

### Fixed

- **Symbolic Opcode Bounds Checking**:
  - Corrected overflow bug in `t81_to_int()` when decoding high-range entropy weights for symbolic dispatch
  - Fixed memory reference fault in `ctx->holo_output` during FFT write-back

- **FSM Vector Corruption (T243)**:
  - Resolved bug where `T243StateVector` advanced into invalid state if `transition_map` was null
  - Added runtime check for valid signal bounds (0–242) before updating `current_state`

---

## [v0.7] - 2025-03-25

### Added
- **T81 Recursion Library**:
  - Introduced `t81recursion.cweb` and `t81recursion.h` to support ternary-aware recursive computation models.
  - Implements canonical ternary recursion patterns optimized for T81 logic layers.

- **Advanced Disassembler Introspection**:
  - Upgraded `disasm_hvm.cweb` and related tools to output all T81 data types, including deeply nested composite structures.
  - Supports full introspection at any execution state for primitive and compound types.

- **Log Viewer Utility**:
  - Added `logviewer.cweb` for interactive viewing of Axion and HanoiVM logs.
  - Includes timestamped filtering, event-type search, and verbosity-level inspection for AI-driven analysis.

- **T81 Pattern Enhancements**:
  - Expanded symbolic dispatch macros in `t81_patterns.cweb` with support for AI feedback and intent-based transformation cycles.

- **Miscellaneous**:
  - Added test coverage for recursion and advanced control flow in `test_advanced_hvm.cweb` and `test_controlflow_hvm.cweb`.
  - Updated Makefile and `.cwebpkg` for smoother integration of newly added modules.

---

## [v0.6] - 2025-03-24

### Added
- **T81 Symbolic Pattern Engine**:
  - Introduced `t81_patterns.cweb` with symbolic transformations: `identity`, `negate`, `rotate`, `zero`, and `gaia`.
  - Implemented Axion-aware pattern dispatch via `t81_dispatch_pattern` using AI signal code.
  - Integrated GPU-accelerated `t81_pattern_gaia_transform()` using GAIA/ROCm backend.

- **GAIA HIP Backend**:
  - Added `gaia_handle_request.cweb`, mirroring CUDA symbolic transformation logic for AMD GPUs via HIP.
  - Unified symbolic logic transformations via `GaiaRequest`/`GaiaResponse` for AI-guided GPU processing.

- **T729Tensor Enhancements**:
  - Full-featured tensor API now supports `clone`, `print`, and detailed `reshape`, `slice`, `contract`, `transpose`.
  - Improved error handling, debug logging via `VERBOSE_T729TENSOR`.

- **Recursive Tier Execution Simulation**:
  - Introduced `recursive_tier_execution.cweb` for visual tier promotion/demotion across T81 → T243 → T729.
  - Included Axion AI signal logging and tensor rendering at each recursive step.

- **Kernel Test Harness (`hanoivm-test.cweb`)**:
  - Modularized test cases with debugfs output and runtime toggle via module params.
  - Expanded coverage for Axion anomaly detection, entropy scoring, and recursive VM tests.

- **Disassembler Extensions**:
  - Enhanced `disassembler.cweb` with `VERBOSE_DISASSEMBLE` support and T81 operand introspection.
  - Shows symbolic operand values and alignment for AI-injected `.hvm` binaries.

- **Pattern Debug Utilities**:
  - Added `t81_pattern_debug()` for live introspection of `uint81_t` values in test and runtime logs.

### Changed
- **Axion-GAIA Interface**:
  - Refactored GPU request logic to dynamically route through CUDA or HIP backends.
  - Introduced `GAIA_ANALYZE`, `GAIA_TRANSFORM`, `GAIA_RECONSTRUCT`, `GAIA_EMIT_VECTOR` intents for semantic GPU operation.

- **T81Lang + TISC Synergy**:
  - Enhanced TISC macros (`FIB`, `FACT`, `MATMUL`, `TNN`) to leverage T81-based symbolic patterns for VM execution.
  - Hooked entropy-aware macros into Axion AI to allow rollback or promotion logic.

- **Axion Metadata Logging**:
  - Log events from symbolic GPU dispatch (`gaia_transform`) and pattern applications (`pattern_applied`).
  - Expanded log types and structure in `axion.meta.json`.

- **Tensor Stringification**:
  - Added `t729tensor_to_string.cweb` for printable debug output of high-dimensional tensor states.

### Fixed
- **Memory Management**:
  - Resolved heap safety and alignment issues in tensor cloning, slicing, and reshaping.
  - Ensured all tensor operations validate shape and size consistency before allocation.

- **Edge Case Behavior**:
  - Corrected VM crash in T729 demotion cycle when depth did not decrement on error state.
  - Improved GPU error checking in `gaia_handle_request()` for buffer overflows and invalid lengths.
