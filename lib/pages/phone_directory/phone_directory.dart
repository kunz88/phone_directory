import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pages_project/cubits/contacts_cubit/contacts_cubit.dart';

class PhoneDirectory extends StatelessWidget {
  // classe pagina di contatti

  const PhoneDirectory({super.key});
  @override
  Widget build(BuildContext context) {
    final contacts = context.watch<ContactsCubit>().state.contacts;
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    if (contacts.isEmpty) {
      //condizione di collection vuota
      return const Center(
        child: Text('No contacts yet.'),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contatti',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Ordina'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // usiamo children perche verranno aggiunti numerosi campi
              ...contacts.map(
                (contact) => // uso lo spread operartor pre crearmi l'array di figli della mia colonna
                    ListTile(
                  focusColor: Theme.of(context).colorScheme.onPrimary,
                  titleTextStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.primary),
                  onTap: () => context.go(
                    '/users/${contact.id}',
                  ), // extra permette di iniettare il contatto corrente nella pagina successiva
                  leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        child:
                            Text(contact.name.characters.first.toUpperCase()),
                      )),
                  title: Text(contact.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () =>
                        context.read<ContactsCubit>().deleteContact(contact.id),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
