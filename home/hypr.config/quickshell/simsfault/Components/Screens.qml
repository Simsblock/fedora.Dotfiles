import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
// https://wiki.hypr.land/Configuring/Basics/Dispatchers/
RowLayout {
    Repeater {
        model: Hyprland.workspaces.values
        Rectangle {
            width: 50
            height: 40
            border.width: 1
            color: (model.focused) ? "green" : (model.active) ? "pink" : "gray"

            Text {
                anchors.centerIn: parent
                text: model.id
            }

            MouseArea {
                anchors.fill: parent
                enabled: true
                onClicked: Hyprland.dispatch("hl.dsp.focus({workspace =" + model.id + "})")
            }
        }
    }

    Rectangle {
        width: 50
        height: 40
        border.width: 1
        color: "yellow"

        Text {
            anchors.centerIn: parent
            text: "+"
        }

        MouseArea {
            anchors.fill: parent
            enabled: true
            onClicked: Hyprland.dispatch("hl.dsp.focus({workspace =" + "4" + "})")
        }
    }
}