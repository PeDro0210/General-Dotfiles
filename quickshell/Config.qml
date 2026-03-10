pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property var theme: {
        "text_color": "#F8F8F9",
        "background_1": "#D3A197",
        "background_2": "#73B1B2",
        "highlight_color": "#88898F"
    }
}
