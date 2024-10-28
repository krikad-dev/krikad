// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      mobileNumber: json['mobile_number'] as String,
      alternateNumber: json['alternate_number'] as String?,
      aadhaarNumber: json['aadhar_number'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pinCode: json['pincode'] as String?,
      address: json['address'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'mobile_number': instance.mobileNumber,
      'alternate_number': instance.alternateNumber,
      'aadhar_number': instance.aadhaarNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'city': instance.city,
      'district': instance.district,
      'state': instance.state,
      'pincode': instance.pinCode,
      'address': instance.address,
      'email': instance.email,
    };
