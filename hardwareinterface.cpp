#include "hardwareinterface.h"
#include <cstdlib>
#include <ctime>

HardwareInterface::HardwareInterface()
{
    std::srand(std::time(nullptr));
}

int HardwareInterface::getCurrentBpm() {
    return 85 + std::rand()/((RAND_MAX + 1u)/10);
}
