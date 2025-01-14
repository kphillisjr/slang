// TEST_IGNORE_FILE:
// File: ModuleBSource/ModuleB_b.Slang
implementing "TestModuleB";

__include "ModuleB_a";

namespace ModuleB
{
    int f_b() {
        return f_a();
    }
}
