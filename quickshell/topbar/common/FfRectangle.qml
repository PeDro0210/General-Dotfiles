import QtQuick
import QtQuick.Layouts
import Quickshell.Io
import Quickshell.Hyprland

import "../.."

Rectangle {
    width: parent.width
    height: parent.height

    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: Config.theme.background_0
        }
        GradientStop {
            position: 1.0
            color: Config.theme.background_1
        }
    }

    BorderImage {
        anchors {
            fill: parent
        }
        border {
            left: 10
            top: 10
            right: 10
            bottom: 10
        }
        horizontalTileMode: BorderImage.Stretch
        verticalTileMode: BorderImage.Stretch
        source: "../../images/base-border.png"
    }

    radius: 8.0
}
