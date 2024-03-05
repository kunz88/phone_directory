import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pages_project/models/contact.dart';

part 'contact_state.freezed.dart';

// contact state con libreria freezed
@freezed
class ContactState with _$ContactState {
  const factory ContactState({Contact? contact}) = _ContactState;
}
