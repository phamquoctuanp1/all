import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0
import QtQml 2.0
import QtQuick.Controls 2.15
import QtQuick 2.9

Item {
    id: root
    width: 500
    height: 400
    clip: false
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

        //        Button {
        //            id: plusButton
        //            //operation: "+"
        //            // onClicked: result.text = parseFloat(argument1.text) + parseFloat(argument2.text)
        //        }
        Button {
            id: btDk
            x: 132
            y: 318
            text: qsTr("Đăng ký")
            tooltip: ""
            //onClipChanged:
        }

        Button {
            id: btThoat
            x: 218
            y: 297
            text: qsTr("Thoát")
        }

        Button {
            id: btTaoLai
            x: 277
            y: 328
            text: qsTr("Tạo lại")
        }
    }

    ColumnLayout {
        id: columnLayout1
        width: 100
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 150
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 20

        Label {
            id: txtIP
            x: 50
            y: 77
            text: qsTr("MAC")
        }

        Label {
            id: txtGioBat
            x: 50
            y: 117
            text: qsTr("Giờ bật máy")
        }

        Label {
            id: txtGioTat
            x: 50
            y: 153
            text: qsTr("Giờ tắt máy")
        }

        Label {
            id: lbLyDo
            x: 50
            y: 192
            text: qsTr("Lý do")
        }
    }

    ColumnLayout {
        id: columnLayout2
        anchors.left: parent.left
        anchors.leftMargin: 140
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 150
        anchors.top: parent.top
        anchors.topMargin: 50

        TextField {
            id: txtMAC
            x: 165
            y: 74
            width: 308
            height: 23
            placeholderText: qsTr("")
        }

        TextField {
            id: txtLyDo
            x: 165
            y: 192
            width: 308
            height: 66
            placeholderText: qsTr("")
        }

        TextField {
            id: txtGioBatMay
            x: 165
            y: 117
            width: 308
            height: 23
            placeholderText: qsTr("")
        }

        TextField {
            id: txtGioTatMay
            x: 165
            y: 153
            width: 308
            height: 23
            placeholderText: qsTr("")
        }
    }
}
