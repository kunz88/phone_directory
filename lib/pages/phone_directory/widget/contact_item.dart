import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pages_project/cubits/contacts_cubit/contacts_cubit.dart';
import 'package:pages_project/models/contact.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: Text(contact.name.characters.first.toUpperCase()),
          )),
      title: Text(contact.name),
      trailing: IconButton(
        color: Colors.redAccent,
        iconSize: 20,
        icon: const Icon(Icons.delete_rounded),
        onPressed: () =>
            context.read<ContactsCubit>().deleteContact(contact.id),
      ),
    );
  }
}
