import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:pages_project/models/contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as Contact;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          extra.name,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: CardContact(
          extra:
              extra), // prendo l'extra che mi arriva dalla pagina precedente (il contatto selezionato)
    );
  }
}

// classe card contatto, utilizzata all'interno della pagina 2
class CardContact extends StatelessWidget {
  const CardContact({
    super.key,
    required this.extra,
  });

  final Contact extra; // devo dichiarare l'extra di tipo contatto

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector( // gestur detector permette di controllare una determinata azione
            onTap: () { // al tocco
              Navigator.push(context, MaterialPageRoute(builder: (context) { // al tocco posiziono una pagina nell'array di pagine con push
                return const DetailScreen(); // renderizzo la pagina sopra quella precedente
              }));
            },
            child: const Hero(
              tag: 'contact image',
              child: Image(
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // le tre card successive rappresentano i campi del mio form dell'utente in dettaglio
        Card(
          child: ListTile(
            trailing: const Icon(Icons.phone_android_rounded),
            title: Text(extra.phoneNumber),
            subtitle: const Text("phone number"),
            titleTextStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
        Card(
          child: ListTile(
            trailing: const Icon(Icons.add_home_rounded),
            title: Text(extra.address),
            subtitle: const Text("Address"),
            titleTextStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(DateFormat.yMMMMd().format(extra.dateOfBirth)),
            subtitle: const Text("Date of birth"),
            titleTextStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ]),
    );
  }
}
// LA PAGINA CHE VIENE ATTIVATA AL TOCCO DELL' IMMAGINE
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'contact image',
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
            ),
          ),
        ),
      ),
    );
  }
}
