import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

class SizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            //normal Sized box with height and width
            SizedBox(
              width: 100.0,
              height: 100.0,
              child: RandomContainer(),
            ),

            //Sized box to give vertical margin
            SizedBox(
              height: 10.0,
            ),

            //Sized Box with fromSize constructor to give directly the size
            RandomContainer(
              child: SizedBox.fromSize(
                size: deviceSize / 10.0,
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            //SizedBox with Expand constructor so that
            // it can expand to its parent width & height
            RandomContainer(
              height: 200.0,
              width: 200.0,
              child: SizedBox.expand(
                child: FlutterLogo(),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            //SizedOverflowbox to allow its child
            // to overflow or expand more than its parent size.
            RandomContainer(
              child: SizedOverflowBox(
                  size: Size(50.0, 50.0),
                  child: Text("Three", style: TextStyle(fontSize: 25.0))),
            ),

            SizedBox(
              height: 10.0,
            ),

            //Fractional Sized box to give ration for the child
            // to adjust depending on its parent size
            RandomContainer(
              height: 100.0,
              width: 100.0,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: FlutterLogo(),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
