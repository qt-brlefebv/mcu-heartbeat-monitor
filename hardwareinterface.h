#ifndef HARDWAREINTERFACE_H
#define HARDWAREINTERFACE_H

#include <qul/singleton.h>

class HardwareInterface : public Qul::Singleton<HardwareInterface>
{
public:
    friend struct Qul::Singleton<HardwareInterface>;
    int getCurrentBpm();
private:
    HardwareInterface();
    HardwareInterface(const HardwareInterface &);
    HardwareInterface &operator=(const HardwareInterface &);
};

#endif // HARDWAREINTERFACE_H
