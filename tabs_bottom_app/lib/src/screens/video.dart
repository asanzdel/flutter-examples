import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.ondemand_video,
              size: 170.0,
              color: Colors.green,
            ),
            Text("Segundo tab")
          ],
        ),
      ),
    );
  }
}
