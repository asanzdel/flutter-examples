import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

  String myText = "";
  TextEditingController controller = TextEditingController();

  void onSubmittedPressed(String value) {
    setState(() {
      myText = myText + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField widget"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el texto aqui"),
              onSubmitted: onSubmittedPressed,
              controller: controller,
            ),
            Text(myText)
          ],
        ),
      ),
    );
  }
}
