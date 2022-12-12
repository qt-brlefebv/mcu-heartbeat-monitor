import QtQuick 2.15
import Constants 1.0

Item {
    width: Constants.width
    height: Constants.height

    Screen01 {
        id: screen
    }

    Timer {
        id: blinker
        interval: 200
        running: false
        repeat: false
        onTriggered: {
            screen.heartVisible = true
        }
    }

    Timer {
        id: blinkStarter
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            screen.heartVisible = false
            blinker.start()
        }
    }

    Timer {
        id: bpmTimer
        interval: 1250
        running: true
        repeat: true
        onTriggered: {
            screen.bpmValue = HardwareInterface.readBpm()
        }
    }
}
