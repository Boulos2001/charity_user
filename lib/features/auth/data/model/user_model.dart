import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    UserDataModel? data,
    String? key,
    dynamic permission,
    String? message,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    int? id,
    String?subscriberId,

    String? email,
    String? password,
    int? gender,
    String? phoneNumber,
    int? roleId,
    String? imageURL,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
