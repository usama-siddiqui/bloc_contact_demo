import 'package:bloc_contact/src/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:bloc_contact/src/blocs/contact_bloc.dart';

import 'contact.dart';

class HomePage extends StatelessWidget {
  final bloc = ContactsBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Contact>>(
        stream: bloc.contacts,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, position) {
                  return _createListTile(snapshot.data[position], context);
                });
          }
        },
      ),
    );
  }

  Widget _createListTile(Contact contact, BuildContext context) {
    return ListTile(
      title: Text(contact.name),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ContactPage(contact: contact);
        }));
      },
    );
  }
}
