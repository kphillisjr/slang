// TEST_IGNORE_FILE:
// File: TestModuleB.slang

module "TestModuleB";

// Test Include using string literal version of identifier tokens:
// __include "dir/file-name"; // Note: File extension is not required.
__include "ModuleBSource/ModuleB_c";
__include "ModuleBSource/ModuleB_b";

public int testModuleB() {
    int result = ModuleB::f_a();
    result += ModuleB::f_b();
    result += ModuleB::f_c();
    // This should return 4
    return result;
}
