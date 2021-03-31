import 'package:bloc_contact/data/repository.dart';
import 'package:bloc_contact/src/models/contact.dart';
import 'package:rxdart/rxdart.dart';

class ContactsBloc {
  final _contacts = BehaviorSubject<List<Contact>>();
  final _repository = Repository();

  ContactsBloc() {
    _fetchContacts();
  }

  //Get Data
  Stream<List<Contact>> get contacts => _contacts.stream;

  //Set Data
  Function(List<Contact>) get _changeContacts => _contacts.sink.add;

  _fetchContacts() =>
      _repository.fetchContacts().then((contacts) => _changeContacts(contacts));

  dispose() {
    _contacts.close();
  }
}
