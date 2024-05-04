import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmed_user_model.freezed.dart';
part 'confirmed_user_model.g.dart';

@freezed
class ConfirmedUserModel with _$ConfirmedUserModel {
  const factory ConfirmedUserModel({
    String? token,
    User? user,
    dynamic permissions,
    String? message,
    bool? isSucceed,
  }) = _ConfirmedUserModel;

  factory ConfirmedUserModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedUserModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    String?subscriberId,
    String? arabicName,
    String? englishName,
    String? email,
    int? gender,
    String? phoneNumber,
    int? roleId,
    String? imageUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
