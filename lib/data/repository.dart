import 'package:bloc_contact/data/contact_calls.dart';
import 'package:bloc_contact/src/models/contact.dart';

class Repository{
  ContactCalls calls = new ContactCalls();

  Future<List<Contact>> fetchContacts() async => await calls.fetchContacts();

}