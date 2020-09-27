import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0
import QtQml 2.0
import QtQuick.Controls 2.15
import QtQuick 2.9

Item {
    width: 400
    height: 400

    ColumnLayout {
        id: columnLayout
        x: 35
        y: 36
        width: 309
        height: 199

        TextInput {
            id: txtMacId
            x: 155
            y: 126
            width: 80
            height: 20
            text: qsTr("")
            font.pixelSize: 12
        }

        Text {
            id: txtidMac
            x: 29
            y: 122
            text: qsTr("Địa chỉ Mac")
            font.pixelSize: 12
        }
    }

    RowLayout {
        id: rowLayout
        x: 213
        y: 326
        width: 162
        height: 55

        Button {
            id: btBat
            x: 213
            y: 336
            text: qsTr("Bật máy")
        }
    }
}
