import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

import "../common"
import "../"

Scope {
    Variants {
        model: Quickshell.screens
        Item {
            PanelWindow {
                id: power_option_menu
                screen: root.modelData

                color: "transparent"

                visible: false

                anchors {
                    top: true
                    left: true
                }


                margins.top: 4

                PopupWindow {
                    implicitWidth: 245

                    anchor.window: power_option_menu
                    color: "transparent"
                    visible: true

                    FfRectangle {

                        ListView {
                            id: power_option_list
                            anchors.fill: parent

                            model: ListModel {
                                ListElement {
                                    label: "reboot"
                                    action: "systemctl reboot"
                                    text: "Reboot"
                                    keybind: "r"
                                }
                                ListElement {
                                    label: "shutdown"
                                    action: "~/Documents/Shell-Scripts/wlogout/shutdown.sh"
                                    text: "Shutdown"
                                    keybind: "s"
                                }
                                ListElement {
                                    label: "logout"
                                    action: "loginctl kill-session '' --signal=SIGINT"
                                    text: "Logout"
                                    keybind: "l"
                                }
                            }

                            Component {
                                id: power_options_delegate
                                Rectangle {
                                    id: wrapper
                                    required property string label
                                    width: 245
                                    height: 32
                                    color: "transparent"
                                    Text {
                                        id: power_option
                                        text: wrapper.label
                                        anchors.centerIn: parent
                                        font.family: mainFont.name
                                        font.pixelSize: 16
                                        color: Config.theme.text_color
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

                // TODO: add functions for each power option

            }
        }
    }
}
