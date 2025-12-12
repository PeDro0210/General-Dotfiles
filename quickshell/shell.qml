import Quickshell
import QtQuick
import "topbar"

Scope {
    id: root
    FontLoader {
        id: mainFont
        source: "fonts/PixelCode.ttf"
    }

    TopBar {}
}
