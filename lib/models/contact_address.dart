import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_address.freezed.dart';
part 'contact_address.g.dart';

@freezed
class ContactAddress with _$ContactAddress {
  const factory ContactAddress({
    required String city,
    @JsonKey(name: 'street_name') required String street,
    required String state,
  }) = _ContactAddress;
  factory ContactAddress.fromJson(Map<String, dynamic> json) =>
      _$ContactAddressFromJson(json);
}
