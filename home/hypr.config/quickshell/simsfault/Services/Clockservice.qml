pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root
    property string time
    property string shrine: "aaa"

    Process {

        id: timeProc
        command: ["date", "+%R"] //date +%R\ %a\ %d/%m/%y 
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.time = this.text
        }
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: timeProc.running = true
    }

}