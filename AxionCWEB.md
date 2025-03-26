
# AxionAI .cweb File Type Specification

This document describes the extended **.cweb** file-type used within AxionAI. It integrates traditional literate programming elements with additional metadata and directives to support package management, live compilation, and JIT (Just-In-Time) compilation.

---

## 1. Overall Structure

A **.cweb** file is a self-contained document that interleaves human-readable documentation with source code. Its design supports:

- **Documentation Sections:** Provide context, explanations, and formatted outputs.
- **Code Sections:** Marked blocks that are extracted for compilation using tools like `ctangle`.
- **Metadata Blocks:** Extended sections that include package management, dependency info, and runtime configuration directives.

---

## 2. File Header and Metadata

At the beginning of a **.cweb** file, include a metadata block with directives such as:

- **Package Name:** `@pkg AxionAI-Module`
- **Version:** `@version 1.0.0`
- **Dependencies:** `@dep SomeLibrary`
- **JIT/Live Compilation Settings:** e.g., `@jit enable` or `@live-stream true`

**Example:**
```cweb
@* Package Metadata
@pkg AxionAI-Module
@version 1.0.0
@dep LibFoo, LibBar
@jit enable
@live-stream true
```

This metadata is parsed by AxionAI’s package manager to automate builds and manage dependencies.

---

## 3. Documentation Sections

Documentation sections provide detailed commentary and explanations for the code:

- **Purpose:** Explains module functionality, design decisions, and usage.
- **Format:** Written in plain text and may include TeX commands or markdown-style formatting.
- **Delimitation:** These sections are unmarked by code delimiters, making them easily distinguishable from code blocks.

**Example:**
```cweb
@* Introduction
This module demonstrates live streaming compilation and JIT capabilities.
The code below implements a simple example.
```

---

## 4. Code Sections

Code sections are clearly marked and can be extracted in a specific order:

- **Markers:**  
  - `@<...@>` for named code sections.
  - `@{ ... @}` for contiguous code blocks.
  
- **Modularity:**  
  Named sections allow code to be rearranged during extraction.

- **Extraction:**  
  Tools like `ctangle` process these blocks to produce the final source code.

**Example:**
```cweb
@<Include Libraries@>
#include <stdio.h>

@<Main Function@>
int main() {
    printf("Hello, AxionAI!");
    return 0;
}
```

---

## 5. Extraction and Compilation Directives

The file includes directives for automated tools:

- **ctangle Commands:**  
  Implicitly extract code blocks as dictated by named sections.

- **cweave Commands:**  
  Generate formatted documentation combining code and narrative.

- **Live/JIT Directives:**  
  - `@live-update` signals the system to recompile immediately upon file change.
  - `@optimize` or `@profile` can be used to influence JIT compilation behavior.

---

## 6. Conventions and Best Practices

- **Separation of Concerns:**  
  Clearly separate explanatory text and source code using the appropriate markers.

- **Modular Design:**  
  Break your code into named sections for easier extraction and debugging.

- **Consistent Documentation:**  
  Keep code updates and documentation synchronized to maximize the benefits of literate programming.

**Full Structure Example:**
```cweb
@* Package Metadata
@pkg AxionAI-Module
@version 1.0.0
@dep LibFoo, LibBar
@jit enable
@live-stream true

@* Introduction
This document serves as a self-contained module for AxionAI,
demonstrating live streaming and JIT compilation.

@* Libraries
@<Include Libraries@>
#include <stdio.h>
#include <stdlib.h>

@* Main Function
@<Main Function@>
int main() {
    printf("Live JIT compilation in AxionAI!\n");
    return 0;
}
```

---

## Summary

The AxionAI .cweb file-type specification combines:
- **Metadata Blocks** for package management and runtime configuration.
- **Documentation Sections** for detailed in-line commentary.
- **Code Sections** marked for dynamic extraction and live compilation.
- **Directives** supporting live updates and JIT compilation.

This unified format enhances maintainability, transparency, and rapid iteration within the AxionAI ecosystem.

---

*For further details or questions, please refer to additional documentation or reach out to the development team.*
