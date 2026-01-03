import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

import "../common"
import "../"

PanelWindow {
    id: power_option_menu

    color: "transparent"

    visible: false

    // for the keybaord to not focus any other window and just have keyboard access in the panel
    WlrLayershell.keyboardFocus: WlrKeyboardFocus.Exclusive

    focusable: true

    property ListModel power_options_list: ListModel {
        ListElement {
            label: "reboot"
            action: "systemctl reboot"
            is_active: false
        }
        ListElement {
            label: "shutdown"
            action: "~/Documents/Shell-Scripts/wlogout/shutdown.sh"
            is_active: false
        }
        ListElement {
            label: "logout"
            action: "loginctl kill-session '' --signal=SIGINT"
            is_active: false
        }
    }

    Item {
        id: keyboard_layer
        focus: true
        PopupWindow {
            implicitWidth: 232

            anchor.rect.x: Screen.width  / - 28

            anchor.window: power_option_menu
            color: "transparent"
            visible: true

            FfRectangle {

                ListView {
                    id: power_option_list
                    anchors.fill: parent

                    model: power_option_menu.power_options_list
                    Component {
                        id: power_options_delegate
                        Rectangle {
                            id: wrapper
                            required property string label
                            required property string action
                            required property bool is_active
                            width: 232
                            height: 32
                            color: "transparent"


                            Text {
                                id: power_option
                                text: "<font color=" + "\"" + Config.theme.highlight_color + "\"" +">"  + wrapper.label.charAt(0) + "</font>" + wrapper.label.slice(-(wrapper.label.length - 1))
                                anchors.centerIn: parent
                                font.family: mainFont.name
                                font.pixelSize: 16
                                color: Config.theme.text_color
                            }
                            Process {
                                running: wrapper.is_active
                                // runs the bash bin and then the desire one, cause Quickshell doesn't run bin with a shell directly
                                command: ["bash", "-c", action]
                            }
                        }
                    }

                    delegate: power_options_delegate
                }
            }
        }

        Scope {
            id: appLauncherIpc
            IpcHandler {
                target: "powerOptionsMenu"
                function togglePowerOptionsMenu() {
                    power_option_menu.visible = !power_option_menu.visible;
                }
            }
        }

        Keys.onPressed: event => {
            if (event.key == Qt.Key_R) {
                console.info("Pressed for restart");
                power_options_list.get(0).is_active = true;
            } else if (event.key == Qt.Key_S) {
                console.info("Pressed for shutdown");
                power_options_list.get(1).is_active = true;
            } else if (event.key == Qt.Key_L) {
                console.info("Pressed for logout");
                power_options_list.get(2).is_active = true;
            }
        }
    }
}
