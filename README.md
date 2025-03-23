🗼 HanoiVM

Recursive Ternary Virtual Machine for Post-Binary Symbolic Computation

"Inspired by the Tower of Hanoi. Powered by trits, recursion, and AI."
🚀 Overview

HanoiVM is a recursive ternary virtual machine designed for symbolic computing, AI-driven execution, and post-binary experimentation. It interprets .hvm bytecode structured across three radix layers:

T81 (Base-81): 4-trit precision primitives
T243 (Base-243): Symbolic stack and logic operations
T729 (Base-729): Macroinstruction encoding for recursive computation
HanoiVM powers the evolving ternary stack that includes T81Lang, Axion, and future TISC compilers.


🧠 Key Features

🔢 Recursive Ternary Arithmetic (T81, T243, T729)
📦 Symbolic Stack Engine with deep ternary nesting
🤖 AI Integration via Axion (feedback, entropy, optimization)
⚙️ GPU Support via CUDA/GAIA (cuda_handle_request.cweb, gaia_handle_request.cweb)
🛠 TISC-Compatible instruction set backend
📜 CWEB Literate Source Format for AI-readable architecture
🧪 Disassembler + Test Suite (disasm_hvm.cweb, hanoivm_tests.cweb)
🧩 Assembler & Loader Tools (t81asm.cweb, hvm_loader.cweb)
🗂 Directory Structure


File	Purpose

hanoivm-core.cweb	- Core VM architecture (registers, memory, opcodes)
hanoivm_vm.cweb	- Bytecode interpreter for .hvm files
hanoivm-runtime.cweb - Runtime environment and symbolic stack frames
t81_stack.cweb, libt81.cweb	- Base-81 arithmetic and stack utilities
libt243.cweb, libt729.cweb	- Higher-order ternary logic for T243 & T729
ai_hook.cweb	- AI feedback interface for Axion hooks
axion-ai.cweb	- AI execution stub (placeholder for Axion runtime)
axion-gaia-interface.cweb	- GPU interface bridge for Axion-GAIA backend
cuda_handle_request.cweb - CUDA dispatch logic for T729 macros
gaia_handle_request.cweb - ROCm/GAIA dispatch stub for symbolic acceleration
disassembler.cweb - Ternary bytecode disassembler (full depth introspection)
hanoivm_cli.cweb - CLI wrapper and binary runner
t81asm.cweb	- Experimental assembler from human-readable syntax
hvm_loader.cweb	- Loader utility for .hvm segments
hanoivm_tests.cweb - Built-in unit test suite for core logic
Makefile	- Build automation for CWEB modules
Cargo.toml	- Future Rust integration for compiler/assembler
HanoiVM.png	- Logo/diagram
ROADMAP.md	- Project goals and future milestones
hanoivm_project_profile_report.pdf - PDF summary of architectural overview

🛠️ Build Instructions

Requirements
make, gcc or clang
nvcc (for optional CUDA backend)
cweb tools (ctangle, cweave)

Optional: cargo (Rust-based tools in future)

Compile
make
This will generate the HanoiVM binary and supporting tools.

🧪 Running HanoiVM

To execute a compiled .hvm file:

./hanoivm_cli path/to/program.hvm
For debugging or disassembly:

./disasm_hvm path/to/program.hvm
🔭 Roadmap

 Recursive VM core for T81, T243, and T729
 Disassembler with symbolic introspection
 Axion hook bridge for AI feedback
 Full-featured T81Lang compiler integration
 GAIA/ROCm GPU backend implementation
 Formal TISC spec & compiler backend
See ROADMAP.md for detailed milestones.

🤝 Contributing

We welcome feedback, ideas, and contributions. Please open issues or submit pull requests for:

Opcode extensions
AI optimization strategies
Ternary language experiments
Visualization tools
🪪 License

MIT License. See LICENSE for details.
