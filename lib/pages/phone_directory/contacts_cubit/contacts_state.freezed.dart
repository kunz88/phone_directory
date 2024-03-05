// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactsState {
  List<Contact> get contacts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res, ContactsState>;
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactsStateImplCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$$ContactsStateImplCopyWith(
          _$ContactsStateImpl value, $Res Function(_$ContactsStateImpl) then) =
      __$$ContactsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$ContactsStateImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$ContactsStateImpl>
    implements _$$ContactsStateImplCopyWith<$Res> {
  __$$ContactsStateImplCopyWithImpl(
      _$ContactsStateImpl _value, $Res Function(_$ContactsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$ContactsStateImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$ContactsStateImpl implements _ContactsState {
  const _$ContactsStateImpl({final List<Contact> contacts = const []})
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactsState(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsStateImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactsStateImplCopyWith<_$ContactsStateImpl> get copyWith =>
      __$$ContactsStateImplCopyWithImpl<_$ContactsStateImpl>(this, _$identity);
}

abstract class _ContactsState implements ContactsState {
  const factory _ContactsState({final List<Contact> contacts}) =
      _$ContactsStateImpl;

  @override
  List<Contact> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$ContactsStateImplCopyWith<_$ContactsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
