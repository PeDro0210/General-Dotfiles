import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick.Controls.Basic

import "../common"

// taking dinki config
RowLayout {
    id: workspaces
    implicitHeight: parent.height
    spacing: 10
    anchors.left: parent.left

    // doing the filter over 0 for those workspaces that are toggle
    property var currentWorkspaces: Hyprland.workspaces.values.filter(w => w.id > 0)

    Repeater {
        model: parent.currentWorkspaces

        FfRectangle {
            width: 50
            Text{
                anchors.centerIn: parent
                text: modelData.id
                font: mainFont.name
                color: theme.text_color
            }
        }
    }
}
