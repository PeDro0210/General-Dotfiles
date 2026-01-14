import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

import "../common"
import "../"

PanelWindow {
    id: power_option_window

    property bool hidden: true

    implicitWidth: 232
    implicitHeight: 96

    color: "transparent"
    focusable: true

    // for the keybaord to not focus any other window and just have keyboard access in the panel
    WlrLayershell.keyboardFocus: WlrKeyboardFocus.Exclusive

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

    FfRectangle {
        id: power_option_frame

        visible: true
        width: 232
        height: 32
        focus: true

        anchors.fill: parent

        states: State {
            name: "hidden"
            when: power_option_window.hidden

            PropertyChanges {
                power_option_window {
                    visible: false
                }
            }

            PropertyChanges {
                power_option_frame {
                    opacity: 0
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

        transitions: Transition {
            reversible: true
            to: "hidden"

            SequentialAnimation {
                OpacityAnimator {
                    from: 1
                    to: 0
                    duration: 100
                }
                PropertyAction {
                    target: power_option_window
                    property: "visible"
                }
            }
        }
        ListView {
            id: power_option_list
            anchors.fill: parent

            model: power_option_window.power_options_list
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
                        text: "<font color=" + "\"" + Config.theme.highlight_color + "\"" + ">" + wrapper.label.charAt(0) + "</font>" + wrapper.label.slice(-(wrapper.label.length - 1))
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

    Scope {
        id: appLauncherIpc
        IpcHandler {
            target: "powerOptionsMenu"
            function togglePowerOptionsMenu() {
                power_option_window.hidden = !power_option_window.hidden;

                console.info("Power Option Window hidden: " + power_option_window.hidden);

                console.debug("Power Option Window visible: " + power_option_window.visible);
                console.debug("Power Option Frame opacity: " + power_option_frame.opacity);
            }
        }
    }
}
