import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import "../Components" as Components
// https://wiki.hypr.land/Configuring/Basics/Dispatchers/
Item {
    id: root
    anchors.fill: parent

    RowLayout {
        Repeater {
            model: Hyprland.workspaces.values
            Components.BarBlob {

                color: (model.focused) ? "green" : (model.active) ? "pink" : "gray"
                text: model.id

                MouseArea {
                    anchors.fill: parent
                    enabled: true
                    onClicked: Hyprland.dispatch("hl.dsp.focus({workspace =" + model.id + "})")
                }
            }
        }

        Components.BarBlob {
            color: "yellow"
            text: "+"

            MouseArea {
                anchors.fill: parent
                enabled: true
                onClicked: Hyprland.dispatch("hl.dsp.focus({workspace =" + "4" + "})")
            }
        }
    }
}