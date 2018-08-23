import 'dart:async';

import 'package:flutter/material.dart';

class OverlayExample extends StatelessWidget {
  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
              top: 40.0,
              right: 10.0,
              child: CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.red,
                child: Text("1"),
              ),
            ));

// OverlayEntry overlayEntry = OverlayEntry(
//         builder: (context) => Positioned(
//               top: MediaQuery.of(context).size.height / 2.0,
//               width: MediaQuery.of(context).size.width / 2.0,
//               child: CircleAvatar(
//                 radius: 50.0,
//                 backgroundColor: Colors.red,
//                 child: Text("1"),
//               ),
//             ));
    overlayState.insert(overlayEntry);

    await Future.delayed(Duration(seconds: 2));

    overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overlay Example"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showOverlay(context);
          },
          child: Text(
            "Show My Icon",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}
