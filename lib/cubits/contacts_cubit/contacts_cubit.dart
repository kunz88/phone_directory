import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pages_project/cubits/contacts_cubit/contacts_state.dart';
import 'package:pages_project/models/contact.dart';

List<Contact> contacts = [
  Contact(
    id: 1,
    name: "John Doe",
    phoneNumber: "123-456-7890",
    dateOfBirth: DateTime(1990, 5, 15),
    picture: "john_doe.jpg",
    address: "123 Main Street",
  ),
  Contact(
    id: 2,
    name: "Jane Smith",
    phoneNumber: "555-555-5555",
    dateOfBirth: DateTime(1985, 10, 25),
    picture: "jane_smith.jpg",
    address: "456 Elm Street",
  ),
  Contact(
    id: 3,
    name: "Michael Johnson",
    phoneNumber: "222-333-4444",
    dateOfBirth: DateTime(1982, 3, 8),
    picture: "michael_johnson.jpg",
    address: "789 Oak Avenue",
  ),
  Contact(
    id: 4,
    name: "Emily Davis",
    phoneNumber: "777-888-9999",
    dateOfBirth: DateTime(1995, 12, 10),
    picture: "emily_davis.jpg",
    address: "1011 Pine Road",
  ),
  Contact(
    id: 5,
    name: "Christopher Brown",
    phoneNumber: "444-555-6666",
    dateOfBirth: DateTime(1978, 7, 20),
    picture: "chris_brown.jpg",
    address: "1315 Cedar Lane",
  ),
  Contact(
    id: 6,
    name: "Jessica Wilson",
    phoneNumber: "666-777-8888",
    dateOfBirth: DateTime(1989, 2, 14),
    picture: "jessica_wilson.jpg",
    address: "1617 Maple Drive",
  ),
  Contact(
    id: 7,
    name: "Matthew Taylor",
    phoneNumber: "999-000-1111",
    dateOfBirth: DateTime(1980, 9, 3),
    picture: "matthew_taylor.jpg",
    address: "1819 Birch Street",
  ),
  Contact(
    id: 8,
    name: "Sarah Anderson",
    phoneNumber: "111-222-3333",
    dateOfBirth: DateTime(1992, 6, 18),
    picture: "sarah_anderson.jpg",
    address: "2021 Walnut Avenue",
  ),
  Contact(
    id: 9,
    name: "David Martinez",
    phoneNumber: "888-999-0000",
    dateOfBirth: DateTime(1975, 11, 30),
    picture: "david_martinez.jpg",
    address: "2223 Oakwood Court",
  ),
  Contact(
    id: 10,
    name: "Jennifer Garcia",
    phoneNumber: "333-444-5555",
    dateOfBirth: DateTime(1987, 4, 5),
    picture: "jennifer_garcia.jpg",
    address: "2425 Spruce Lane",
  ),
  Contact(
    id: 11,
    name: "Alice Smith",
    phoneNumber: "987-654-3210",
    dateOfBirth: DateTime(1985, 10, 25),
    picture: "alice_smith.jpg",
    address: "2627 Pine Street",
  ),
  Contact(
    id: 12,
    name: "Bob Johnson",
    phoneNumber: "555-123-4567",
    dateOfBirth: DateTime(1982, 8, 12),
    picture: "bob_johnson.jpg",
    address: "2829 Elm Avenue",
  ),
  Contact(
    id: 13,
    name: "Emily Brown",
    phoneNumber: "222-333-4444",
    dateOfBirth: DateTime(1993, 3, 18),
    picture: "emily_brown.jpg",
    address: "3031 Oak Lane",
  ),
  Contact(
    id: 14,
    name: "Michael Davis",
    phoneNumber: "777-888-9999",
    dateOfBirth: DateTime(1978, 12, 5),
    picture: "michael_davis.jpg",
    address: "3233 Cedar Court",
  ),
  Contact(
    id: 15,
    name: "Sophia Wilson",
    phoneNumber: "333-222-1111",
    dateOfBirth: DateTime(1989, 6, 30),
    picture: "sophia_wilson.jpg",
    address: "3435 Maple Street",
  ),
  Contact(
    id: 16,
    name: "David Martinez",
    phoneNumber: "666-777-8888",
    dateOfBirth: DateTime(1987, 9, 14),
    picture: "david_martinez.jpg",
    address: "3637 Birch Avenue",
  ),
  Contact(
    id: 17,
    name: "Jessica Taylor",
    phoneNumber: "444-555-6666",
    dateOfBirth: DateTime(1995, 11, 9),
    picture: "jessica_taylor.jpg",
    address: "3839 Pine Road",
  ),
  Contact(
    id: 18,
    name: "William Anderson",
    phoneNumber: "999-888-7777",
    dateOfBirth: DateTime(1980, 4, 22),
    picture: "william_anderson.jpg",
    address: "4041 Elm Street",
  ),
  Contact(
    id: 19,
    name: "Olivia Garcia",
    phoneNumber: "111-222-3333",
    dateOfBirth: DateTime(1992, 7, 7),
    picture: "olivia_garcia.jpg",
    address: "4243 Oak Avenue",
  ),
  Contact(
    id: 20,
    name: "Daniel Brown",
    phoneNumber: "666-333-9999",
    dateOfBirth: DateTime(1984, 2, 28),
    picture: "daniel_brown.jpg",
    address: "4445 Maple Lane",
  ),
];

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(ContactsState(contacts: contacts));

  void deleteContact(int contactId) {
    // metodo per eliminare un contatto dall'array di contatti
    emit(state.copyWith(
        contacts: state.contacts.where((e) => e.id != contactId).toList()));
  }

  // UTILIZZO QUESTA FUNZIONE PER ORDINARE LA LISTA DI CONTATTI
  void sortContact() {
    contacts.sort((a, b) => a.name.compareTo(b.name));
    contacts.reversed;
    emit(state.copyWith(contacts: contacts));
  }
}
