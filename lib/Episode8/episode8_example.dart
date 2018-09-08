import 'package:flutter/material.dart';

class Example8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Placeholder(),
          Row(
            children: <Widget>[
              Text("Widget 1"),
              Visibility(
                child: Text("Widget 2"),
                visible: false,
              ),
              Spacer(),
              Text("Widget 3"),
              Text("Widget 4"),
            ],
          ),
        ],
      ),
    );
  }
}
