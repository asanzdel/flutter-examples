import 'package:flutter/material.dart';

class Second extends StatelessWidget {

  final String tittle;
  Second({this.tittle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.tittle),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Volver"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
