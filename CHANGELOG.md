# **CHANGELOG.md**

## [Unreleased] - 2025-03-24

### Added
- **Axion AI Integration**:
  - Introduced **Axion AI** for dynamic optimization of ternary operations via `axion_tbin_execute`.
  - Added **rollback mechanism** triggered by Axion AI anomaly detection, ensuring system stability in case of high entropy or unexpected results.

- **AI-Driven Execution**:
  - The **HanoiVM** now supports **real-time introspective AI optimizations** for ternary operations.
  - Enabled **NLP Command Interface** for Axion AI, allowing commands like "optimize", "rollback", and "snapshot" to control the VM's execution flow.

- **T729 Tensor Engine**:
  - Full support for **T729** tensor operations (`DOT`, `TRANS`, `SLICE`, `PRINT`) integrated into the VM.

- **Modular `.cweb` Documentation**:
  - Introduced modular `.cweb` documentation format for all major operations (tensor manipulation, symbolic AI opcodes, disassembly).
  - Enhanced readability and maintainability of the codebase.

- **Recursive Stack Logic**:
  - Implemented recursive stack modes for **T81**, **T243**, and **T729**.
  - Support for **stack promotion** and **demotion** between the different recursion levels.

### Changed
- **Project Roadmap**:
  - **Phase 4** (Axion AI Integration) has been updated to include full **AI optimizations** for ternary operations and **rollback** support.
  - **Phase 6** (Advanced Features) now includes the **Axion-GAIA GPU Bridge** and **Project Looking Glass** visualization.

- **T243 and T729 Instruction Handling**:
  - Enhanced the VM's instruction set to support higher-order ternary operations with **T243BigInt** and **T729Tensor** engines.
  - Instructions for **T729** tensor manipulation (`DOT`, `TRANS`, `SLICE`) are now handled by the VM.

- **CI and Testing**:
  - CI pipeline updated to include tests for **AI optimizations** and **rollback functionality**.
  - **Disassembler** integration improved for `.hvm` bytecode validation, including tests for tensor operations and symbolic AI instructions.

### Fixed
- **Debugging and Trace Logs**:
  - Improved logging for **AI-driven execution** and **ternary stack operations**, ensuring easier debugging and traceability of system changes.
  - Added enhanced **debugfs interfaces** for interacting with the AI and VM during runtime.

---

## [v0.5] - 2025-03-23

### Added
- **Axion AI Support**: Initial hooks and logging for **Axion AI** integration.
- **T243BigInt Operations**: Full support for **T243** BigInt arithmetic (`ADD`, `MUL`, `PRINT`).
- **CI Pipeline**: Initial test suite integration for recursive stack operations.

### Changed
- **Instruction Set**: Expanded support for **T243** and **T729** operations.
- **Test Suite**: Improved `.hvm` bytecode validation for tensor operations and recursion modes.

### Fixed
- **Stack Operations**: Corrected issues with stack pointer handling during recursive executions.

---

## [v0.1] - 2025-02-28

### Added
- **Core VM Structure**: Initial implementation of recursive stack logic for **T81** operations.
- **Disassembler**: First iteration of the bytecode disassembler for `.hvm` files.
- **CI Setup**: Basic CI pipeline with testing for stack operations.

### Changed
- **Base-81 Operand Architecture**: Enhanced the handling of `uint81_t` operands for ternary operations.

### Fixed
- **Stack Overflow Handling**: Fixed issues with stack overflow during deep recursion.

---

This **`CHANGELOG.md`** now includes all recent updates regarding the **Axion AI** integration, **recursive expansion**, and new features like **tensor operations** and **rollback mechanisms**. It also tracks the progress from **Phase 4** of the roadmap.
