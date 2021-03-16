import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    ListView {
        anchors.fill: parent
        model: MyListModel {}
        delegate: Text { text: '%1: %2'.arg(model.key).arg(model.value) }
    }
}
