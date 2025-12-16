import QtQuick 2.15

Item {
    property int borderSize: fieldRect.border.width
    Rectangle {
        id: fieldRect
        anchors.fill: parent
        color: "blue"
        border.color: "black"
        border.width: 20

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: 7
            height: parent.height
            color: "black"
        }

        Rectangle {
            anchors.centerIn: parent
            width: 200
            height: 200
            radius: width / 2
            color: "black"

            Rectangle{
                anchors.centerIn: parent
                width: 175
                height: 175
                radius: width / 2
                color: "blue"
                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    width: 7
                    height: parent.height
                    color: "black"
                }
            }
        }
    }

}
