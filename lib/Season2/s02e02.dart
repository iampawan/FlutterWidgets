import 'package:flutter/material.dart';

class S02E02 extends StatelessWidget {
  final listofImages = [
    "https://images.unsplash.com/photo-1547157283-087711e7858f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1547152850-11ac68bbe48f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1547149639-94838200b639?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1547149683-35abbbc2ee42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1543362905-f2423ef4e0f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1547087145-c26f26347c07?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1547078352-7721c3ad49a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S02E02"),
      ),
      body: Center(
        child: ListWheelScrollView(
          perspective: 0.003,
          diameterRatio: 2,
          physics: BouncingScrollPhysics(),
          children: listofImages
              .map(
                (m) => Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.network(
                            m,
                            alignment: Alignment.center,
                            filterQuality: FilterQuality.low,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 40.0,
                            left: 30.0,
                            child: Text(
                              "Image",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
              )
              .toList(),
          itemExtent: MediaQuery.of(context).size.height * 0.8,
        ),
      ),
    );
  }
}
