// TEST_IGNORE_FILE:
// File: ModuleCSource/ModuleC_b.Slang

implementing "TestModuleC";

__include "ModuleC_a";

namespace ModuleC
{
    int f_b() {
        return f_a();
    }
}
