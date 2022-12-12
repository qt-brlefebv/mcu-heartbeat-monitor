#ifndef HARDWAREINTERFACE_H
#define HARDWAREINTERFACE_H

#include <qul/singleton.h>

class HardwareInterface : public Qul::Singleton<HardwareInterface>
{
public:
    int readBpm();

    friend class Qul::Singleton<HardwareInterface>;
private:
    HardwareInterface();
    HardwareInterface(const HardwareInterface&);
    HardwareInterface &operator=(const HardwareInterface&);
};

#endif // HARDWAREINTERFACE_H
