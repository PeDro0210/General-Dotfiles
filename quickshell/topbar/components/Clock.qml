import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import Quickshell.Hyprland

import QtQuick
import QtQuick.Layouts

import "../common"
import "../.."



//TODO: add border image

FfRectangle {

    width: 250

    anchors.right: parent.right

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    Text {
        id: clock_text
        anchors.centerIn: parent
        text: Qt.formatDateTime(clock.date, "ddd dd, hh:mm")
        font: mainFont.name
        color: Config.theme.text_color
    }
}
