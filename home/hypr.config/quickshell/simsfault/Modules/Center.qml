import QtQuick
import QtQuick.Layouts
import Quickshell

Item {
    id: root
    anchors.fill: parent

    ColumnLayout {

        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5

        Rectangle {
            id: musicBtn
            Layout.alignment: Qt.AlignHCenter
            width: 200
            height: 20
            radius: 8
            color: "#222222"

            visible: false

            Text {
                anchors.centerIn: parent
                text: "Music"
                color: "white"
            }
        }

        Rectangle {
            id: timeBtn
            Layout.alignment: Qt.AlignHCenter
            width: 50
            height: 30
            radius: 8
            color: "#222222"

            MouseArea {
                anchors.fill: parent
                onClicked: popup.visible = !popup.visible
            }

            Time {
                id: time
                anchors.centerIn: parent
                color: "white"
            }
        }
    }

    PopupWindow {
        id: popup
        visible: false

        anchor.item: timeBtn 
        anchor.edges: Edges.Bottom 
        anchor.gravity: Edges.Bottom 

        implicitWidth: 220
        implicitHeight: 160
        color: "transparent"

        Rectangle {
            anchors.topMargin: 5
            anchors.fill: parent
            radius: 8
            color: "#222222"

            Text {
                anchors.centerIn: parent
                text: "Popup content"
                color: "white"
            }
        }
    }
}