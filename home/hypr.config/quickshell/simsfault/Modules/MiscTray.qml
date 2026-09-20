import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import "../Components" as Components
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
        // https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/
    }
}