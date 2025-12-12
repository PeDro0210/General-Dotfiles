import Quickshell
import QtQuick
import "topbar"

Scope {
    id: root

    property var theme: {
        "text_color": "#FFFFFF"
    }

    FontLoader {
        id: mainFont
        source: "fonts/PixelCode.ttf"
    }

    TopBar {}
}
