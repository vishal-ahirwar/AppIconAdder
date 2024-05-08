import QtQuick

Item {
    Component
    {
        id:selectIcon
        SelectIcon
        {
        }
    }

    StyleButton
    {
        anchors.centerIn: parent
        btnText: "Select Application"
        onOnBtnClicked:
        {
            stackView.push(selectIcon)
        }
    }
}
