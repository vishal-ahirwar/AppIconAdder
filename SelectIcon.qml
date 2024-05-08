import QtQuick

Item {
    Component
    {
        id:finalPage
        FinalPage
        {
        }
    }

    StyleButton
    {
        anchors.centerIn: parent
        btnText: "Select Icon"
        onOnBtnClicked:
        {
            stackView.push(finalPage)
        }
    }
}
