import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pages_project/pages/phone_directory/contacts_cubit/contacts_cubit.dart';

import 'package:pages_project/pages/phone_directory/widget/contact_item.dart';

class PhoneDirectory extends StatelessWidget {
  // classe pagina di contatti

  const PhoneDirectory({super.key});
  @override
  Widget build(BuildContext context) {
    // Per accedere al Cubit e rimanere in ascolto di eventuali
    // cambi di stato
    final contacts = context.watch<ContactsCubit>().state.contacts;

    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );

    if (contacts.isEmpty) {
      //condizione di collection vuota
      return Center(
        child: Text(
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
            'No contacts yet.'),
      );
    }
    return Scaffold(
      // --> NAVIGATOR APP
      appBar: AppBar(
        title: Text(
          'Contatti',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () => context.read<ContactsCubit>().sortContact(),
            child: const Text('Sort'),
          ),
        ],
      ),

      // --> BODY

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // usiamo children perche verranno aggiunti numerosi campi
              ...contacts.map(
                (contact) => // uso lo spread operartor pre crearmi l'array di figli della mia colonna
                    ContactItem(
                        contact:
                            contact), // uso il widget ContactItem a cui passo il parametro contact
              )
            ],
          ),
        ),
      ),
      // --> FLOATING BOTTON
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
