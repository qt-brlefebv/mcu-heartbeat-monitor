

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import Constants 1.0

Rectangle {
    width: Constants.width
    height: Constants.height
    color: "#404040"

    Text {
        id: textTitle
        width: 442
        height: 51
        color: "#fcfbfb"
        text: qsTr("Hello HeartbeatMonitor")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 24
        font.family: "Verdana"
        anchors.verticalCenterOffset: -194
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
    }

    Text {
        id: textHeart
        x: 112
        y: 130
        width: 259
        height: 236
        color: "#fc0707"
        text: qsTr("♥")
        font.pixelSize: 256
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }

    Text {
        id: textBpmValue
        x: 433
        y: 97
        width: 264
        height: 224
        color: (textBpmValue.bpm < 80) ? "white" : "orange"
        text: textBpmValue.bpm
        font.pixelSize: 144
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        property int bpm: 0
        font.family: "Arial"

        Text {
            id: text1
            x: 8
            y: 210
            width: 248
            height: 36
            color: "#fffefe"
            text: qsTr("BPM")
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }
    }
}
