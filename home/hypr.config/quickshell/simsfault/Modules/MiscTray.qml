import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import "../Components" as Components
import "../Services" as Services
Item {
    id: root
    anchors.fill: parent

    RowLayout {
        anchors.right: parent.right
        spacing: 6

        // Battery
        Components.BarBlob {
            color: "gray"
            text: "\uf240"
            textSize: 20
        }

        // Bluetooth
        // ...

        // Audio
        // https://quickshell.org/docs/v0.3linux adjust volume per application.0/types/Quickshell.Services.Pipewire/
        Components.BarBlob {
            color: "gray"
            text: "\udb81\udd7e"
            textSize: 20

            MouseArea {
                anchors.fill: parent
                onWheel: wheel => {
                    if (wheel.angleDelta.y > 0) {
                        Services.Audio.increaseVolume(Services.Audio.sink)
                    } else {
                        Services.Audio.decreaseVolume(Services.Audio.sink)
                    }
                }
                onClicked: {
                    notif.running=true;
                }
            }

            Process {
                id: notif
                command: ["notify-send", "Quickshell", Services.Audio.sink.name]
            }

        }
    }

}
