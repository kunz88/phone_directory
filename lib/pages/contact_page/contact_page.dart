import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pages_project/cubits/contacts_cubit/contacts_cubit.dart';
import 'package:pages_project/pages/contact_page/widget/contact_card.dart';


// PAGINA DETTAGLIO DEL CONTATTO
class ContactPage extends StatelessWidget {
  final int? contactId; // proprietà per storare l'id del contatto
  const ContactPage(
      {super.key, required this.contactId}); // construttore con il
  @override
  Widget build(BuildContext context) {
    final contact = context
        .watch<ContactsCubit>()
        .state
        .contacts
        .firstWhere((element) => element.id == contactId); // filtro che setta lo stato prendendo l'utente che corrisponde all'id
    return Scaffold(
      appBar: AppBar(
        title: Text(
          contact.name,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: CardContact( // widget dove è innestato tutto il body della pagina
        contact: contact,
      ), // prendo l'extra che mi arriva dalla pagina precedente (il contatto selezionato)
    );
  }
}
