// TEST_IGNORE_FILE:
// File: TestModuleC.slang
module "TestModuleC.Slang";

// Test Include using string literal version of identifier tokens:
// __include "dir/file-name.slang"; // Note: File extension is not required.
__include "ModuleCSource/ModuleC_c.slang";
__include "ModuleCSource/ModuleC_b.slang";

public int testModuleC() {
    int result = ModuleC::f_a();
    result += ModuleC::f_b();
    result += ModuleC::f_c();
    // This should return 4
    return result;
}
