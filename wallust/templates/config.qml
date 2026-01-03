pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property var theme: {
        "text_color": "{{foreground}}",
        "background_1": "{{color5}}",
        "background_2": "{{color4}}",
        "highlight_color": "{{color3}}"
    }
}
