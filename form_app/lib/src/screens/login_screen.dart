import 'package:flutter/material.dart';
import 'package:form_app/src/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixins{

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitField(),
          ],
        ),
      ),
    );
  }

  Widget emailField(){
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (String value) {
        print(value);
      },
      validator: validateEmail,
    );
  }

  Widget passwordField(){
    return Container(
      child:  TextFormField(
      decoration: const InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
      obscureText: true,
      onSaved: (String value) {
        print(value);
      },
      validator: validatePassword,
    ));
  }

  Widget submitField(){
    return RaisedButton(
      child: Text("Send"),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
    );
  }
}
