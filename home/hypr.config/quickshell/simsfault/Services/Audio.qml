pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick
import Quickshell.Services.Pipewire

Singleton {
    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property PwNode streams: linkTracker.node.linkGroups
    
    readonly property real scrollValue: 0.05

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: timeProc.running = true
    }

    PwNodeLinkTracker {
        id: linkTracker
        node: Pipewire.defaultAudioSink
    }

    PwObjectTracker { objects: [ sink, streams ] }

    function setVolume(node: PwNode, real: newVolume) {
        node.audio.volume = newVolume
    }

    function increaseVolume(node: PwNode) {
        node.audio.volume += scrollValue
    }

    function decreaseVolume(node: PwNode) {
        node.audio.volume -= scrollValue
    }

    function changeMuted(node: PwNode) {
        node.audio.muted = !node.audio.muted
    }

}