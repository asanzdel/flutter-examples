import 'package:flutter/material.dart';
import 'package:tabs_bottom_app/src/screens/contact.dart';
import 'package:tabs_bottom_app/src/screens/home.dart';
import 'package:tabs_bottom_app/src/screens/video.dart';

class MyBottomTabs extends StatefulWidget {
  @override
  _MyBottomTabsState createState() => _MyBottomTabsState();
}

class _MyBottomTabsState extends State<MyBottomTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Bottom tabs"),
        ),
        bottomNavigationBar: Material(
          color: Colors.blueAccent,
          child: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.contacts)),
            ],
          ),
        ),
        body: TabBarView(children: <Widget> [
          Home(),Video(),Contacts()
        ]),
      ),
    );
  }
}
