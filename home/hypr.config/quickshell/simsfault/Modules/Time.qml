import Quickshell
import Quickshell.Io
import QtQuick
import "../Services" as Service

Text {
    text: Service.Clockservice.time
}