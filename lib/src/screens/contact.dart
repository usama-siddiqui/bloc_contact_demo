import 'package:bloc_contact/src/models/contact.dart';
import 'package:bloc_contact/src/models/contact.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final Contact contact;
  ContactPage({this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(contact.name),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.email),
              title: Text(contact.email),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(contact.name),
            ),
          ],
        ));
  }
}
