import 'package:bloc_contact/src/blocs/contact_bloc.dart';
export 'package:bloc_contact/src/blocs/contact_bloc.dart';
import 'package:flutter/material.dart';

class ContactsProvider extends InheritedWidget {
  final ContactsBloc bloc;

  ContactsProvider({Key key, Widget child})
      : bloc = ContactsBloc(),
        super(key: key);

  bool updateShouldNotify(_) => true;

  static ContactsBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ContactsProvider>())
        .bloc;
  }
}
