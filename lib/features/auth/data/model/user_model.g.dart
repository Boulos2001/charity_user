// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseModelImpl _$$UserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseModelImpl(
      data: json['data'] == null
          ? null
          : UserDataModel.fromJson(json['data'] as Map<String, dynamic>),
      key: json['key'] as String?,
      permission: json['permission'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UserResponseModelImplToJson(
        _$UserResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'key': instance.key,
      'permission': instance.permission,
      'message': instance.message,
    };

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      id: json['id'] as int?,
      subscriberId: json['subscriberId'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      gender: json['gender'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      roleId: json['roleId'] as int?,
      imageURL: json['imageURL'] as String?,
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subscriberId': instance.subscriberId,
      'email': instance.email,
      'password': instance.password,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'roleId': instance.roleId,
      'imageURL': instance.imageURL,
    };
