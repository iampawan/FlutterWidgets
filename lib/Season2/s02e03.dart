import 'package:flutter/material.dart';
import 'package:flutterwidgets/main.dart';

class S02E03 extends StatefulWidget {
  S02E03({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _S02E03State createState() => _S02E03State();
}

class _S02E03State extends State<S02E03> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // throw new Exception("Something went wrong with the counter");
      rootKey.currentState.handleError("Something went wrong with the counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
