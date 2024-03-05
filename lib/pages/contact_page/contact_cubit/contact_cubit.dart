import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pages_project/models/contact.dart';

/// GET A LIST OF RESOURCES
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pages_project/pages/contact_page/contact_cubit/contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(const ContactState());

  void getContactById(int contactId) async {
    try {
      final response = await http.get(Uri.parse(
        "https://my-json-server.typicode.com/andrea689/flutter_course/contacts/$contactId",
      ));
      if (response.statusCode == 200) {
        final contact = Contact.fromJson(jsonDecode(response.body));

        emit(state.copyWith(contact: contact));
      } else {
        throw Exception('Failed to GET contact');
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}
