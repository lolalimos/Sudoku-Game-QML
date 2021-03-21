import QtQuick 2.12



Rectangle {

    height: width
    color: "#DAC5BC"
    border.color: "white"
    property int value: 3
    property bool editable: false
    property string textColor: (editable ? "blue" : "black")
    function changeNumber(flag){
        if(flag)
            value = (value + 1) % 9;
    }

    Text {
        function setText(value){
            if(value === 0) return "";
            if(value < 0) return "1";
            if(value > 9) return "9";
            return value.toString();
        }

        anchors.centerIn: parent
        text: setText(parent.value)
        color: parent.textColor
        font.pixelSize: 20
    }
    MouseArea {
        anchors.fill: parent
        onClicked: parent.changeNumber(parent.editable)
    }
}
