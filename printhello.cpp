#include<iostream>

void helloworld(){
    std::cout << "Hello World" << std::endl;
}

#include <covscript/cni.hpp>
#include <covscript/dll.hpp>

CNI_ROOT_NAMESPACE {
	CNI(helloworld)
}
