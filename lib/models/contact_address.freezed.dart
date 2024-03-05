// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactAddress _$ContactAddressFromJson(Map<String, dynamic> json) {
  return _ContactAddress.fromJson(json);
}

/// @nodoc
mixin _$ContactAddress {
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_name')
  String get street => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactAddressCopyWith<ContactAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactAddressCopyWith<$Res> {
  factory $ContactAddressCopyWith(
          ContactAddress value, $Res Function(ContactAddress) then) =
      _$ContactAddressCopyWithImpl<$Res, ContactAddress>;
  @useResult
  $Res call(
      {String city, @JsonKey(name: 'street_name') String street, String state});
}

/// @nodoc
class _$ContactAddressCopyWithImpl<$Res, $Val extends ContactAddress>
    implements $ContactAddressCopyWith<$Res> {
  _$ContactAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? street = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactAddressImplCopyWith<$Res>
    implements $ContactAddressCopyWith<$Res> {
  factory _$$ContactAddressImplCopyWith(_$ContactAddressImpl value,
          $Res Function(_$ContactAddressImpl) then) =
      __$$ContactAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String city, @JsonKey(name: 'street_name') String street, String state});
}

/// @nodoc
class __$$ContactAddressImplCopyWithImpl<$Res>
    extends _$ContactAddressCopyWithImpl<$Res, _$ContactAddressImpl>
    implements _$$ContactAddressImplCopyWith<$Res> {
  __$$ContactAddressImplCopyWithImpl(
      _$ContactAddressImpl _value, $Res Function(_$ContactAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? street = null,
    Object? state = null,
  }) {
    return _then(_$ContactAddressImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactAddressImpl implements _ContactAddress {
  const _$ContactAddressImpl(
      {required this.city,
      @JsonKey(name: 'street_name') required this.street,
      required this.state});

  factory _$ContactAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactAddressImplFromJson(json);

  @override
  final String city;
  @override
  @JsonKey(name: 'street_name')
  final String street;
  @override
  final String state;

  @override
  String toString() {
    return 'ContactAddress(city: $city, street: $street, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactAddressImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, street, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactAddressImplCopyWith<_$ContactAddressImpl> get copyWith =>
      __$$ContactAddressImplCopyWithImpl<_$ContactAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactAddressImplToJson(
      this,
    );
  }
}

abstract class _ContactAddress implements ContactAddress {
  const factory _ContactAddress(
      {required final String city,
      @JsonKey(name: 'street_name') required final String street,
      required final String state}) = _$ContactAddressImpl;

  factory _ContactAddress.fromJson(Map<String, dynamic> json) =
      _$ContactAddressImpl.fromJson;

  @override
  String get city;
  @override
  @JsonKey(name: 'street_name')
  String get street;
  @override
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$ContactAddressImplCopyWith<_$ContactAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
