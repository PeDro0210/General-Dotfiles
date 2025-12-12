import Quickshell
import Quickshell.Hyprland
import QtQuick
import "./components"

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: topbar
            implicitHeight: 50

            property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }

            margins {
                left: 4
                right: 4
                top: 5
            }

            color: "transparent"

            Workspaces {}
            Clock {}
        }
    }
}
