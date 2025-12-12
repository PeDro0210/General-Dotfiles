import QtQuick
import QtQuick.Window
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

        property int focusedId: Hyprland.focusedWorkspace

        FfRectangle {
            width: 50

            Text {
                anchors.centerIn: parent
                text: modelData.id
                font: mainFont.name
                color: theme.text_color
            }

            Image {
                width: parent.width / 2
                height: parent.height / 2
                source: "../../images/selection-cursor.png"
                visible: 1 == modelData.id
                anchors.centerIn: parent
                transform: [
                    Translate {
                        y: 5
                        x: -20
                    }
                ]
            }
        }
    }
}
