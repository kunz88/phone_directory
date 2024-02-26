import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pages_project/models/contact.dart';

class PhoneDirectory extends StatelessWidget {
  // classe pagina di contatti
  final List<Contact> contacts = [
    Contact(
      name: "John Doe",
      phoneNumber: "123-456-7890",
      dateOfBirth: DateTime(1990, 5, 15),
      picture: "john_doe.jpg",
      address: "123 Main Street",
    ),
    Contact(
      name: "Jane Smith",
      phoneNumber: "555-555-5555",
      dateOfBirth: DateTime(1985, 10, 25),
      picture: "jane_smith.jpg",
      address: "456 Elm Street",
    ),
    Contact(
      name: "Michael Johnson",
      phoneNumber: "222-333-4444",
      dateOfBirth: DateTime(1982, 3, 8),
      picture: "michael_johnson.jpg",
      address: "789 Oak Avenue",
    ),
    Contact(
      name: "Emily Davis",
      phoneNumber: "777-888-9999",
      dateOfBirth: DateTime(1995, 12, 10),
      picture: "emily_davis.jpg",
      address: "1011 Pine Road",
    ),
    Contact(
      name: "Christopher Brown",
      phoneNumber: "444-555-6666",
      dateOfBirth: DateTime(1978, 7, 20),
      picture: "chris_brown.jpg",
      address: "1315 Cedar Lane",
    ),
    Contact(
      name: "Jessica Wilson",
      phoneNumber: "666-777-8888",
      dateOfBirth: DateTime(1989, 2, 14),
      picture: "jessica_wilson.jpg",
      address: "1617 Maple Drive",
    ),
    Contact(
      name: "Matthew Taylor",
      phoneNumber: "999-000-1111",
      dateOfBirth: DateTime(1980, 9, 3),
      picture: "matthew_taylor.jpg",
      address: "1819 Birch Street",
    ),
    Contact(
      name: "Sarah Anderson",
      phoneNumber: "111-222-3333",
      dateOfBirth: DateTime(1992, 6, 18),
      picture: "sarah_anderson.jpg",
      address: "2021 Walnut Avenue",
    ),
    Contact(
      name: "David Martinez",
      phoneNumber: "888-999-0000",
      dateOfBirth: DateTime(1975, 11, 30),
      picture: "david_martinez.jpg",
      address: "2223 Oakwood Court",
    ),
    Contact(
      name: "Jennifer Garcia",
      phoneNumber: "333-444-5555",
      dateOfBirth: DateTime(1987, 4, 5),
      picture: "jennifer_garcia.jpg",
      address: "2425 Spruce Lane",
    ),
    Contact(
      name: "Alice Smith",
      phoneNumber: "987-654-3210",
      dateOfBirth: DateTime(1985, 10, 25),
      picture: "alice_smith.jpg",
      address: "2627 Pine Street",
    ),
    Contact(
      name: "Bob Johnson",
      phoneNumber: "555-123-4567",
      dateOfBirth: DateTime(1982, 8, 12),
      picture: "bob_johnson.jpg",
      address: "2829 Elm Avenue",
    ),
    Contact(
      name: "Emily Brown",
      phoneNumber: "222-333-4444",
      dateOfBirth: DateTime(1993, 3, 18),
      picture: "emily_brown.jpg",
      address: "3031 Oak Lane",
    ),
    Contact(
      name: "Michael Davis",
      phoneNumber: "777-888-9999",
      dateOfBirth: DateTime(1978, 12, 5),
      picture: "michael_davis.jpg",
      address: "3233 Cedar Court",
    ),
    Contact(
      name: "Sophia Wilson",
      phoneNumber: "333-222-1111",
      dateOfBirth: DateTime(1989, 6, 30),
      picture: "sophia_wilson.jpg",
      address: "3435 Maple Street",
    ),
    Contact(
      name: "David Martinez",
      phoneNumber: "666-777-8888",
      dateOfBirth: DateTime(1987, 9, 14),
      picture: "david_martinez.jpg",
      address: "3637 Birch Avenue",
    ),
    Contact(
      name: "Jessica Taylor",
      phoneNumber: "444-555-6666",
      dateOfBirth: DateTime(1995, 11, 9),
      picture: "jessica_taylor.jpg",
      address: "3839 Pine Road",
    ),
    Contact(
      name: "William Anderson",
      phoneNumber: "999-888-7777",
      dateOfBirth: DateTime(1980, 4, 22),
      picture: "william_anderson.jpg",
      address: "4041 Elm Street",
    ),
    Contact(
      name: "Olivia Garcia",
      phoneNumber: "111-222-3333",
      dateOfBirth: DateTime(1992, 7, 7),
      picture: "olivia_garcia.jpg",
      address: "4243 Oak Avenue",
    ),
    Contact(
      name: "Daniel Brown",
      phoneNumber: "666-333-9999",
      dateOfBirth: DateTime(1984, 2, 28),
      picture: "daniel_brown.jpg",
      address: "4445 Maple Lane",
    ),
  ];

  PhoneDirectory({super.key});
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    if (contacts.isEmpty) {
      //condizione di collection vuota
      return Center(
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
                  onTap: () => context.go('/users/id',
                      extra:
                          contact), // extra permette di iniettare il contatto corrente nella pagina successiva
                  leading: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
                      ),
                    ),
                  ),
                  title: Text(contact.name),
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
