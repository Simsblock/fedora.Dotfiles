import Quickshell
import Quickshell.Io
import QtQuick

import "../Components" as Components
import "../Services" as Services

Variants {

    model: Quickshell.screens;

    delegate: Component {
        PanelWindow {

        required property var modelData

        screen: modelData

        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 30

            Components.Screens {}

            Components.Time {
                anchors.centerIn: parent
            }
        }
    }
}