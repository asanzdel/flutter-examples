import 'package:flutter/material.dart';
import 'package:navigator_app/src/screens/second.dart';

class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar pantalla"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Second(tittle: "holaa")
                )
            );
          },
        ),
      ),
    );
  }
}