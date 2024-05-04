// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmed_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmedUserModelImpl _$$ConfirmedUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmedUserModelImpl(
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      permissions: json['permissions'],
      message: json['message'] as String?,
      isSucceed: json['isSucceed'] as bool?,
    );

Map<String, dynamic> _$$ConfirmedUserModelImplToJson(
        _$ConfirmedUserModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'permissions': instance.permissions,
      'message': instance.message,
      'isSucceed': instance.isSucceed,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      subscriberId: json['subscriberId'] as String?,
      arabicName: json['arabicName'] as String?,
      englishName: json['englishName'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      roleId: json['roleId'] as int?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subscriberId': instance.subscriberId,
      'arabicName': instance.arabicName,
      'englishName': instance.englishName,
      'email': instance.email,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'roleId': instance.roleId,
      'imageUrl': instance.imageUrl,
    };
