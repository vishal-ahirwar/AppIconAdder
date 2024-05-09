import QtQuick
 import QtQuick.Controls
Window {
    width: 553
    height: 737
    visible: true
    title: qsTr("App Icon Adder")

        Text {
            id: title
            text: qsTr("App Icon Addder")
            color:"black"
            font.pixelSize: 32
            anchors.top: parent.top
            anchors.margins: 55
            horizontalAlignment: Qt.AlignHCenter
            width: parent.width
        }
        StackView
        {
            id:stackView
            initialItem: SelectApplication{}
            anchors.centerIn: parent
        }

        StyleButton
        {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 55
            btnText: "Back"
            isEnabled: stackView.depth
            onOnBtnClicked:
            {
                stackView.pop()
            }
        }
}
