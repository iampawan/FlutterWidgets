import 'package:flutter/cupertino.dart';

class Episode4 extends StatelessWidget {
  Widget cupertinoPageScaffold() => CupertinoPageScaffold(
        child: Center(
          child: Text("Hello Cupertino iOS"),
        ),
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Text("Cupertino"),
          trailing: Icon(CupertinoIcons.search),
        ),
      );

  Widget cupertinoTabScaffold() => CupertinoTabScaffold(
        tabBuilder: (context, i) => CupertinoPageScaffold(
              child: Center(
                child: i == 0 ? Text("Phone") : Text("Chat"),
              ),
            ),
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), title: Text("Phone")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble),
                title: Text("Chat"))
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Chats"),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text("WhatsApp"),
            ),
          )
        ],
      ),
    );
  }
}
