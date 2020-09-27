import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0
import QtQml 2.0
import QtQuick.Controls 1.4

Item {
    id: root
    width: 500
    height: 400
    property alias btDk: btDk

    RowLayout {
        id: btnLayout
        x: 170
        y: 280
        width: 300
        height: 100
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2.0

        Button {
            id: btDk
            x: 132
            y: 318
            text: qsTr("Register")
        }

        Button {
            id: btThoat
            x: 218
            y: 297
            text: qsTr("Delete")
        }
    }

    ColumnLayout {
        id: columnLayout
    }

    ColumnLayout {
        id: columnLayout1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 117
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 11
        anchors.top: parent.top
        anchors.topMargin: 15

        TableView {
            id: tableListView
            x: 66
            y: 86
            width: 386
            height: 171
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.horizontalCenterOffset: 250
            anchors.horizontalCenter: columnLayout.horizontalCenter

            TableViewColumn {
                role: "title"
                title: "MAC"
                width: 100
            }
            TableViewColumn {
                role: "author"
                title: "Time turn on"
                width: 100
            }
            TableViewColumn {
                role: "title"
                title: "Time turn off"
                width: 100
            }
            TableViewColumn {
                title: "reason"
                // width: 100
            }
            model: libraryModel
        }
    }
}
