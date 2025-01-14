// TEST_IGNORE_FILE:
// File: ModuleCSource/ModuleC_c.Slang

implementing "TestModuleC.slang";

namespace ModuleC
{
    int f_c() {
        return f_a() + f_b();
    }
}
