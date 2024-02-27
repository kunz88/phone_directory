import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pages_project/models/contact.dart';

part 'contacts_state.freezed.dart';
// contact state con libreria freezed 
@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState({@Default([]) List<Contact> contacts}) =
      _ContactsState;
}
