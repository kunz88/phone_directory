// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      avatar: json['avatar'] as String,
      address: ContactAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'avatar': instance.avatar,
      'address': instance.address,
    };
