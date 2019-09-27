import 'package:flutter/material.dart';
import 'package:form_app/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Iniciar Sesion",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
