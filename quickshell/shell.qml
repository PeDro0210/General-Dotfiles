import Quickshell
import QtQuick

import "topbar"
import "power_options_menu"

Scope {
    id: root
    FontLoader {
        id: mainFont
        source: "fonts/PixelCode.ttf"
    }

    TopBar {}

    PowerOptionsMenu {}
}
