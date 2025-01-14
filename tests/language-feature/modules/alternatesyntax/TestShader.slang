//TEST(compute):COMPARE_COMPUTE(filecheck-buffer=CHECK): -shaderobj -output-using-type
//TEST(compute):COMPARE_COMPUTE(filecheck-buffer=CHECK): -vk -shaderobj -output-using-type
// File: TestShader.slang

import TestModuleA;
import "TestModuleB";
import "TestModuleC.slang";

// TEST_INPUT:ubuffer(data=[0 0 0 0], stride=4):out,name=outputBuffer
RWStructuredBuffer<int> outputBuffer;

[numthreads(4, 1, 1)]
void computeMain(int3 dispatchThreadID: SV_DispatchThreadID)
{
    int tid = dispatchThreadID.x;
    outputBuffer[tid] = testModuleA();
    outputBuffer[tid] += testModuleB();
    outputBuffer[tid] += testModuleC();
    // CHECK: 12
}

