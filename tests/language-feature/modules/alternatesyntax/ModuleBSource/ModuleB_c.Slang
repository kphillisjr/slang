// TEST_IGNORE_FILE:
// File: ModuleBSource/ModuleB_c.Slang
implementing "TestModuleB.slang";

namespace ModuleB
{
    int f_c() {
        return f_a() + f_b();
    }
}
