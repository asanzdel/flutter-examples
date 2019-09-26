import 'package:flutter/material.dart';
import 'package:list_app/src/model/contact_model.dart';
import 'package:list_app/src/screens/contactItem.dart';

class Contact extends StatelessWidget {

  buildList(){
    return <ContactModel>[
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
      ContactModel(name: "Alvaro", email: "alvaro@gmail.com"),
      ContactModel(name: "Nerea", email: "nerea@gmail.com"),
    ];
  }

  List<ContactItem> buildContactList(){
    return buildList()
        .map<ContactItem>((contact) => ContactItem(contact: contact))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contactos"),
        ),
      body: ListView(children: buildContactList()),
    );
  }
}