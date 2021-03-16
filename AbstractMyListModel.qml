import QtQml 2.15
import QtQml.Models 2.15

ListModel {
    id: root
    property list<MyElement> elements: [
        MyElement { key: 'key1'; value: 'value1' }
    ]
    default property alias elements2: root.elements

    Component.onCompleted: {
        for (var i = 0; i < elements.length; i++)
            root.append(elements[i])
    }
}
