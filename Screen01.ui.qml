/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import Constants 1.0

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    color: "#353535"
    property int bpmValue: 0
    property bool heartVisible: true

    Text {
        id: textTitle
        color: "#fffdfd"
        text: qsTr("Hello HeartbeatMonitor")
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenterOffset: -199
        anchors.horizontalCenterOffset: 1
        font.bold: true
        anchors.centerIn: parent
    }

    Text {
        id: textHeart
        x: 93
        y: 82
        width: 242
        height: 290
        visible: root.heartVisible
        color: "#ff0303"
        text: qsTr("♥")
        font.pixelSize: 256
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Item {
        id: itemBpm
        x: 410
        y: 143
        width: 310
        height: 211

        Text {
            id: textBpmValue
            x: 0
            y: 0
            width: 310
            height: 152
            color: root.bpmValue > 80 ? (root.bpmValue > 90 ? "red" : "yellow") : "#fffdfd"
            text: root.bpmValue
            font.pixelSize: 144
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            rotation: 0
            font.bold: true
        }

        Text {
            id: textBpmLabel
            x: 0
            y: 159
            width: 310
            height: 44
            color: "#fffdfd"
            text: qsTr("BPM")
            font.pixelSize: 48
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }
    }
}
