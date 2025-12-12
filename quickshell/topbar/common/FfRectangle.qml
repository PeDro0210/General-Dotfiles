import QtQuick
import QtQuick.Layouts
import Quickshell.Io
import Quickshell.Hyprland

Rectangle {
    width: parent.width
    height: parent.height

    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: "#2E2E84"
        }
        GradientStop {
            position: 1.0
            color: "#111133"
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
