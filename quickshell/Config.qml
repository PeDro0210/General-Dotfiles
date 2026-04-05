pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property var theme: {
        "text_color": "#F6F6F4",
        "background_1": "#A998BA",
        "background_2": "#C99260",
        "highlight_color": "#6F6E69"
    }
}
