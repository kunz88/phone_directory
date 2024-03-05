// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactAddressImpl _$$ContactAddressImplFromJson(Map<String, dynamic> json) =>
    _$ContactAddressImpl(
      city: json['city'] as String,
      street: json['street_name'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$ContactAddressImplToJson(
        _$ContactAddressImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'street_name': instance.street,
      'state': instance.state,
    };
