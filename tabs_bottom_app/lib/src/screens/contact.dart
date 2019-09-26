import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.contacts,
              size: 170.0,
              color: Colors.grey,
            ),
            Text("Tercer tab")
          ],
        ),
      ),
    );
  }
}
