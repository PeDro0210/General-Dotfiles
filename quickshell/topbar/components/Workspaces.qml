import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick.Controls.Basic

import "../common"
import "../.."

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
            width: 75

            Text {
                anchors.centerIn: parent
                text: modelData.id
                font.family: mainFont.name
                font.pixelSize: 16
                color: Config.theme.text_color
            }

            Image {
                width: parent.width / 3
                height: parent.height / 2
                source: "../../images/selection-cursor.png"
                visible: modelData.focused
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
