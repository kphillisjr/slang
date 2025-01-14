// TEST_IGNORE_FILE:
// File: TestModuleA.slang
module TestModuleA;

// Test Include using identifier tokens:
// __include dir.file_name;
__include ModuleASource.ModuleA_c;
__include ModuleASource.ModuleA_b;

public int testModuleA() {
    int result = ModuleA::f_a();
    result += ModuleA::f_b();
    result += ModuleA::f_c();
    return result;
}
