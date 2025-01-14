// TEST_IGNORE_FILE:
implementing "TestModuleA";

__include ModuleA_a;

namespace ModuleA
{
    int f_b() {
        return f_a();
    }
}
