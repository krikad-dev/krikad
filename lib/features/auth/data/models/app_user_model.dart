import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

//ignore_for_file: invalid_annotation_target
@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'status') required String? status,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    @JsonKey(name: 'alternate_number') required String? alternateNumber,
    @JsonKey(name: 'aadhar_number') required String? aadhaarNumber,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'city') required String? city,
    @JsonKey(name: 'district') required String? district,
    @JsonKey(name: 'state') required String? state,
    @JsonKey(name: 'pincode') required String? pinCode,
    @JsonKey(name: 'address') required String? address,
    @JsonKey(name: 'email') required String? email,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
