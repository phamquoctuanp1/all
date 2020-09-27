import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0

Item {
    id: root
    width: 400
    height: 400

    RowLayout {
        id: btnLayout
        x: 260
        y: 268
        width: 300
        height: 100
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 32
        anchors.right: parent.right
        anchors.rightMargin: 20

        Button {
            id: button
            x: 132
            y: 318
            text: qsTr("Button")
        }

        Button {
            id: button1
            x: 218
            y: 297
            text: qsTr("Button")
        }

        Button {
            id: button2
            x: 277
            y: 328
            text: qsTr("Button")
        }
    }
}
