import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

enum DialogAction {
  yes,
  no
}

class _MyAlertDialogState extends State<MyAlertDialog> {

  String inputValue = "";

  void alertResult(DialogAction action){
    print("Tu seleccion es $action");
  }

  void showAlert(String value) {
    AlertDialog dialog = AlertDialog(
        content: Text(value),
        actions: <Widget>[
          FlatButton(
            child: Text("Si"),
            onPressed: () { alertResult(DialogAction.yes); },
          ),
          FlatButton(
            child: Text("No"),
            onPressed: () { alertResult(DialogAction.no); },
          )
        ],
    );

    showDialog(context: context, builder: (BuildContext context) { return dialog; });
  }

  void onChanged(String value) {
    setState(() {
      inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog widget"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el texto aqui"),
              onChanged: onChanged,
            ),
            RaisedButton(
              child: Text("Ver Alerta"),
              onPressed: () { showAlert(inputValue); },
            )
          ],
        ),
      ),
    );
  }
}
