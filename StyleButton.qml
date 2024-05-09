import QtQuick
 import QtQuick.Controls
Item {
    required property string btnText
    property bool isEnabled: true
    signal onBtnClicked
    Button
    {

        text: btnText
        width:271
        height:75
        anchors.centerIn: parent
        enabled: isEnabled
        contentItem:
            Text
            {
                color:"white"
                font.pixelSize: 24
                text: parent.text
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
            }
        background: Rectangle
        {
            color:"#000000"
            width:271
            height:75
            radius:9

        }
    onClicked:
    {
        onBtnClicked()
    }
    }
}
