import 'package:flutter/material.dart';

class S02E01 extends StatefulWidget {
  @override
  S02E01State createState() {
    return new S02E01State();
  }
}

class S02E01State extends State<S02E01> {
  List<String> myList = [
    "A0",
    "B1",
    "C2",
    "D3",
    "E4",
    "F5",
    "G6",
    "H7",
    "I8",
    "J9",
    "K10"
  ];

  _onReorder(oldIndex, newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex = newIndex - 1;
      }
      var item = myList.removeAt(oldIndex);
      myList.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S02E01"),
      ),
      body: ReorderableListView(
        header: Text("Header"),
        onReorder: _onReorder,
        children: myList
            .map(
              (c) => ListTile(
                    key: ObjectKey(c),
                    title: Text(c),
                  ),
            )
            .toList(),
      ),
    );
  }
}
