pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property var theme: {
        "text_color": "#FAF9F6",
        "background_1": "#B5B2E3",
        "background_2": "#AC8E69",
        "highlight_color": "#8E6779"
    }
}
