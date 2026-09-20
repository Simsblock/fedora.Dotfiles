import Quickshell
import Quickshell.Io
import QtQuick

import "../Modules" as Modules
import "../Services" as Services

Variants {

    model: Quickshell.screens;

    delegate: Component {
        PanelWindow {

            required property var modelData

            screen: modelData

             color: "transparent"

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: 50

                Modules.ScreenTray {
                    anchors.leftMargin: 10
                    anchors.topMargin: 10
                }
                Modules.Center {

                }
                Modules.MiscTray {
                    anchors.rightMargin: 10
                    anchors.topMargin: 10
                }
            }
    }
}