import QtQuick
import "Components"

Window {
    visible: true
    title: qsTr("Hello World")
    visibility: Window.FullScreen

    Field {
        id: myField
        anchors.fill: parent
    }

    Ball {
        id: ball
        anchors.centerIn: parent
        upDownScreen: myField.height
        leftRightScreen: myField.width
        borderSize: myField.borderSize
    }

    Print{
        id: print
        anchors.leftMargin: parent.left
    }
}
