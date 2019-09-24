import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  @override
  _MyButtonState createState()  => _MyButtonState();

}

class _MyButtonState extends State<Mybutton> {

  String flutterText = "";
  int index = 0;
  List<String> collections = ["Flutter", "es", "genial"];

  void onPressButton () {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Stateful Widget"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                child: Text(
                  "Actualizar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
                onPressed: onPressButton,
              )
            ],
          ),
        )
      ),
    );
  }
}
