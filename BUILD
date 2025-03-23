# BUILD file for HanoiVM disassembler CI test

genrule(
    name = "generate_test_advanced_hvm",
    srcs = ["test_advanced_hvm.cweb"],
    outs = ["tests/test_advanced.hvm"],
    cmd = "$(location //test_advanced_hvm:test_advanced_hvm) > $(OUTS)",
    tools = ["//test_advanced_hvm:test_advanced_hvm"],
)

sh_test(
    name = "disasm_advanced_test",
    srcs = ["tests/disasm_advanced_test.sh"],
    data = [
        "//disassembler:disassembler",
        "tests/test_advanced.hvm"
    ],
)

cc_binary(
    name = "test_advanced_hvm",
    srcs = ["test_advanced_hvm.cweb"],
    deps = [],
)

# CONTROLFLOW TESTS

genrule(
    name = "generate_test_controlflow_hvm",
    srcs = ["test_controlflow_hvm.cweb"],
    outs = ["tests/test_controlflow.hvm"],
    cmd = "$(location //test_controlflow_hvm:test_controlflow_hvm) > $(OUTS)",
    tools = ["//test_controlflow_hvm:test_controlflow_hvm"],
)

sh_test(
    name = "disasm_controlflow_test",
    srcs = ["tests/disasm_controlflow_test.sh"],
    data = [
        "//disassembler:disassembler",
        "tests/test_controlflow.hvm"
    ],
)

cc_binary(
    name = "test_controlflow_hvm",
    srcs = ["test_controlflow_hvm.cweb"],
    deps = [],
)

# LOGIC TESTS

genrule(
    name = "generate_test_logic_hvm",
    srcs = ["test_logic_hvm.cweb"],
    outs = ["tests/test_logic.hvm"],
    cmd = "$(location //test_logic_hvm:test_logic_hvm) > $(OUTS)",
    tools = ["//test_logic_hvm:test_logic_hvm"],
)

sh_test(
    name = "disasm_logic_test",
    srcs = ["tests/disasm_logic_test.sh"],
    data = [
        "//disassembler:disassembler",
        "tests/test_logic.hvm"
    ],
)

cc_binary(
    name = "test_logic_hvm",
    srcs = ["test_logic_hvm.cweb"],
    deps = [],
)
