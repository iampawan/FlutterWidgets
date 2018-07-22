import 'package:flutter/material.dart';

class Episode3 extends StatelessWidget {
  var accpeptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(100.0, 100.0),
          ),
          Positioned(
            top: 100.0,
            left: 100.0,
            child: DragTarget(
              builder: (BuildContext context, List<dynamic> accepted,
                      List<dynamic> rejected) =>
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.cyan),
                    child: Center(
                      child: Text(accpeptedData.toString()),
                    ),
                  ),
              onAccept: (int data) {
                accpeptedData = data;
              },
            ),
          )
        ],
      ),
    );
  }
}

class DraggableWidget extends StatefulWidget {
  final Offset offset;

  DraggableWidget({Key key, this.offset}) : super(key: key);

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);
  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: offset.dy,
      left: offset.dx,
      child: Draggable(
        data: 20,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue,
          child: Center(
            child: Text(
              "Hi Pawan",
              style: TextStyle(
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        feedback: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue.withOpacity(0.3),
          child: Center(
            child: Text(
              "Hi Pawan",
              style: TextStyle(
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        onDraggableCanceled: (v, o) {
          setState(() {
            offset = o;
          });
        },
      ),
    );
  }
}
