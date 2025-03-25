
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
