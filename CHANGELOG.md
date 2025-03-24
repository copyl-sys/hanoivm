# CHANGELOG

## [Unreleased]
### Added
- T729Tensor full support:
  - `OP_T729_DOT` — tensor contraction
  - `OP_T729_TRANS` — transpose (2D only)
  - `OP_T729_SLICE` — dimension slicing with shape-aware copy
  - `OP_T729_PRINT` — formatted debug output via `t729tensor_to_string()`
- Literate `.cweb` modules for all T729 ops:
  - `t729tensor_transpose.cweb`
  - `t729tensor_reshape.cweb`
  - `t729tensor_slice.cweb`
  - `t729tensor_to_string.cweb`
- `t729tensor_loader.cweb`:
  - Defines reusable `make_test_tensor_2x3()` for test programs
  - VM integration via stack_push + execute_vm

### Changed
- Refactored `hanoivm_vm.cweb`:
  - Added support for T729 opcodes with stack-based dispatch
  - Unified tensor op structure and Axion signal logging

### Fixed
- Structured `t243bigint.cweb` test harness under `#ifdef TEST_T243BIGINT`
- Ensured stack state is preserved post-print (T243 & T729)

### Upcoming
- Operand-streamed slicing (dim/start/end from bytecode)
- `OP_T729_RESHAPE` implementation
- `.hvm` bytecode test generator for tensors

