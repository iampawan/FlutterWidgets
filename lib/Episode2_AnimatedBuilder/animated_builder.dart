import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';
import 'dart:math' as math;

class AnimatedBuilderExample extends StatefulWidget {
  @override
  _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RandomContainer(
          height: 200.0,
          width: 200.0,
          child: AnimatedBuilder(
            animation: _animationController,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.red,
            ),
            builder: (context, child) => Transform.rotate(
                  child: child,
                  angle: _animationController.value * 1.0 * math.pi,
                ),
          ),
        ),
      ),
    );
  }
}
