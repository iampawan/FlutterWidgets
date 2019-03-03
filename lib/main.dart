import 'package:flutter/material.dart';
import 'package:flutterwidgets/Season2/s02e03.dart';

GlobalKey<MyAppState> rootKey = GlobalKey<MyAppState>();

void main() => runApp(MyApp(key: rootKey));

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String errorMessage;

  handleError(String error) {
    if (mounted) {
      setState(() {
        errorMessage = error;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return errorMessage == null
        ? MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: S02E03(title: 'Flutter Demo Home Page'),
          )
        : ErrorWidget(errorMessage);
  }
}
