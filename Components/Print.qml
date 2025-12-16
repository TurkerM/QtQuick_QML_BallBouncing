import QtQuick 2.15
//For debug on window
Item {
    id: root
    property string message
    Text {
        id: print
        text: root.message
        font.pointSize: 50
        color: "orange"
    }
}
