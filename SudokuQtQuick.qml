import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4

Window {
    id: window
    width: height + 200
    height: 580
    visible: true
    title: qsTr("Sudoku Game")
    color: "#ACC7D9"
    minimumHeight: 500
    minimumWidth: minimumHeight + 200

    Rectangle{
        id: rect
        function setMax(a,b){
            return Math.max(a, b);
        }

        anchors.centerIn: parent
        Field {
            function setCellWidth(pWidth, num){
                return(pWidth - (pWidth % num))/num
            }

            id: field2
            anchors.centerIn: parent
            cellWidth: setCellWidth(parent.width, cellsPerRow)
        }
        height: setMax(parent.height,parent.width)-200
        width: height

    }
    Rectangle{
        height: parent.height
        width: 100
        anchors.left:  rect.right
        color: window.color

    Rectangle{
        id: rect1
        height: parent.height/2
        width: parent.width * 0.8
        color: window.color
        anchors.centerIn: parent

    }
    Rectangle{
        height: parent.height/2
        width: rect1.width
        anchors.top: rect1.bottom
        color: window.color
        anchors.centerIn: parent
        Label {
            id:label
            text: "Good Luck!"
            anchors.centerIn: parent
        }
        Button {
            text: "Check"
            onClicked: field2.check()
            //anchors.centerIn: parent
            anchors.top: label.bottom
        }

    }
    }







}
