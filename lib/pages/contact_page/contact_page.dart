import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pages_project/pages/contact_page/contact_cubit/contact_cubit.dart';
import 'package:pages_project/pages/contact_page/widget/contact_card.dart';

// PAGINA DETTAGLIO DEL CONTATTO
class ContactPage extends StatelessWidget {
  const ContactPage({super.key}); // construttore con il
  @override
  Widget build(BuildContext context) {
    final contact = context
        .watch<ContactCubit>()
        .state
        .contact; // filtro che setta lo stato prendendo l'utente che corrisponde all'id

    if (contact == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          contact.firstName,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: CardContact(
        // widget dove è innestato tutto il body della pagina
        contact: contact,
      ), // prendo l'extra che mi arriva dalla pagina precedente (il contatto selezionato)
    );
  }
}
