import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pages_project/models/contact.dart';

/// GET A LIST OF RESOURCES
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pages_project/pages/phone_directory/contacts_cubit/contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(const ContactsState(contacts: [])) {
    getContacts();
  }

  void getContacts() async {
    try {
      final response = await http.get(Uri.parse(
        "https://my-json-server.typicode.com/andrea689/flutter_course/contacts",
      ));
      if (response.statusCode == 200) {
        final contacts = (jsonDecode(response.body) as List)
            .map((e) => Contact.fromJson(e))
            .toList();
        emit(state.copyWith(contacts: contacts));
      } else {
        throw Exception('Failed to GET contacts');
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

  void deleteContact(int contactId) {
    // metodo per eliminare un contatto dall'array di contatti
    emit(state.copyWith(
        contacts: state.contacts.where((e) => e.id != contactId).toList()));
  }

  // UTILIZZO QUESTA FUNZIONE PER ORDINARE LA LISTA DI CONTATTI
  void sortContact() {
    final contacts = List<Contact>.from(state.contacts);
    contacts.sort((b, a) => a.firstName.compareTo(b.firstName));
    emit(state.copyWith(contacts: contacts));
  }
}
