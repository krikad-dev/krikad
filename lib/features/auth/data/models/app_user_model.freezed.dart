// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_number')
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternate_number')
  String? get alternateNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'aadhar_number')
  String? get aadhaarNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'pincode')
  String? get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'alternate_number') String? alternateNumber,
      @JsonKey(name: 'aadhar_number') String? aadhaarNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'pincode') String? pinCode,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? mobileNumber = null,
    Object? alternateNumber = freezed,
    Object? aadhaarNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? address = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      alternateNumber: freezed == alternateNumber
          ? _value.alternateNumber
          : alternateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNumber: freezed == aadhaarNumber
          ? _value.aadhaarNumber
          : aadhaarNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUserImplCopyWith(
          _$AppUserImpl value, $Res Function(_$AppUserImpl) then) =
      __$$AppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'alternate_number') String? alternateNumber,
      @JsonKey(name: 'aadhar_number') String? aadhaarNumber,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'pincode') String? pinCode,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$AppUserImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUserImpl>
    implements _$$AppUserImplCopyWith<$Res> {
  __$$AppUserImplCopyWithImpl(
      _$AppUserImpl _value, $Res Function(_$AppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? mobileNumber = null,
    Object? alternateNumber = freezed,
    Object? aadhaarNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? address = freezed,
    Object? email = freezed,
  }) {
    return _then(_$AppUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      alternateNumber: freezed == alternateNumber
          ? _value.alternateNumber
          : alternateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNumber: freezed == aadhaarNumber
          ? _value.aadhaarNumber
          : aadhaarNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserImpl implements _AppUser {
  const _$AppUserImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'mobile_number') required this.mobileNumber,
      @JsonKey(name: 'alternate_number') required this.alternateNumber,
      @JsonKey(name: 'aadhar_number') required this.aadhaarNumber,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'district') required this.district,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'pincode') required this.pinCode,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'email') required this.email});

  factory _$AppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'mobile_number')
  final String mobileNumber;
  @override
  @JsonKey(name: 'alternate_number')
  final String? alternateNumber;
  @override
  @JsonKey(name: 'aadhar_number')
  final String? aadhaarNumber;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'state')
  final String? state;
  @override
  @JsonKey(name: 'pincode')
  final String? pinCode;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'AppUser(id: $id, status: $status, mobileNumber: $mobileNumber, alternateNumber: $alternateNumber, aadhaarNumber: $aadhaarNumber, firstName: $firstName, lastName: $lastName, city: $city, district: $district, state: $state, pinCode: $pinCode, address: $address, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.alternateNumber, alternateNumber) ||
                other.alternateNumber == alternateNumber) &&
            (identical(other.aadhaarNumber, aadhaarNumber) ||
                other.aadhaarNumber == aadhaarNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      mobileNumber,
      alternateNumber,
      aadhaarNumber,
      firstName,
      lastName,
      city,
      district,
      state,
      pinCode,
      address,
      email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      __$$AppUserImplCopyWithImpl<_$AppUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserImplToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {@JsonKey(name: 'id') required final int? id,
      @JsonKey(name: 'status') required final String? status,
      @JsonKey(name: 'mobile_number') required final String mobileNumber,
      @JsonKey(name: 'alternate_number') required final String? alternateNumber,
      @JsonKey(name: 'aadhar_number') required final String? aadhaarNumber,
      @JsonKey(name: 'first_name') required final String? firstName,
      @JsonKey(name: 'last_name') required final String? lastName,
      @JsonKey(name: 'city') required final String? city,
      @JsonKey(name: 'district') required final String? district,
      @JsonKey(name: 'state') required final String? state,
      @JsonKey(name: 'pincode') required final String? pinCode,
      @JsonKey(name: 'address') required final String? address,
      @JsonKey(name: 'email') required final String? email}) = _$AppUserImpl;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$AppUserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'mobile_number')
  String get mobileNumber;
  @override
  @JsonKey(name: 'alternate_number')
  String? get alternateNumber;
  @override
  @JsonKey(name: 'aadhar_number')
  String? get aadhaarNumber;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'state')
  String? get state;
  @override
  @JsonKey(name: 'pincode')
  String? get pinCode;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
