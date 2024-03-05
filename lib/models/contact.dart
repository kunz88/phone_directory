import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pages_project/models/contact_address.dart';
part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,
    required String avatar,
    required ContactAddress address,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
