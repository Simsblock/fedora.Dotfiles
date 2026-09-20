import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

Rectangle {

    id: root

    property alias text: blobText.text
    property alias textColor: blobText.color
    property alias textSize: blobText.font.pointSize

    width: 50
    height: 40
    border.width: 1
    radius: 8

    Text {
        id: blobText
        anchors.centerIn: parent
    }
}