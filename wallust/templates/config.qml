pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property var theme: {
        "text_color": "{{foreground}}",
        "background_1": "{{color4}}",
        "background_2": "{{color5}}"

    }
}
