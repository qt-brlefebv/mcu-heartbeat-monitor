import QtQuick 2.15
import Constants 1.0

Item {
    width: Constants.width
    height: Constants.height

    Screen01 {
        id: screen01
    }

    Timer {
        id: blinkTimer
        interval: 200
        running: false
        repeat: false
        onTriggered: screen01.heartVisible = true;
    }

    Timer {
        id: blinkStarter
        interval: 1000
        running: true
        repeat: true
        onTriggered: { screen01.heartVisible = false; blinkTimer.start(); }
    }

    Timer {
        interval: 2000
        running: true
        repeat: true

        onTriggered: screen01.bpmValue = HardwareInterface.getCurrentBpm()
    }
}
