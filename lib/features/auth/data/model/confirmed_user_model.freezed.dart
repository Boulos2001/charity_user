// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmed_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmedUserModel _$ConfirmedUserModelFromJson(Map<String, dynamic> json) {
  return _ConfirmedUserModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmedUserModel {
  String? get token => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  dynamic get permissions => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSucceed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmedUserModelCopyWith<ConfirmedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmedUserModelCopyWith<$Res> {
  factory $ConfirmedUserModelCopyWith(
          ConfirmedUserModel value, $Res Function(ConfirmedUserModel) then) =
      _$ConfirmedUserModelCopyWithImpl<$Res, ConfirmedUserModel>;
  @useResult
  $Res call(
      {String? token,
      User? user,
      dynamic permissions,
      String? message,
      bool? isSucceed});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ConfirmedUserModelCopyWithImpl<$Res, $Val extends ConfirmedUserModel>
    implements $ConfirmedUserModelCopyWith<$Res> {
  _$ConfirmedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
    Object? permissions = freezed,
    Object? message = freezed,
    Object? isSucceed = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSucceed: freezed == isSucceed
          ? _value.isSucceed
          : isSucceed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfirmedUserModelImplCopyWith<$Res>
    implements $ConfirmedUserModelCopyWith<$Res> {
  factory _$$ConfirmedUserModelImplCopyWith(_$ConfirmedUserModelImpl value,
          $Res Function(_$ConfirmedUserModelImpl) then) =
      __$$ConfirmedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      User? user,
      dynamic permissions,
      String? message,
      bool? isSucceed});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ConfirmedUserModelImplCopyWithImpl<$Res>
    extends _$ConfirmedUserModelCopyWithImpl<$Res, _$ConfirmedUserModelImpl>
    implements _$$ConfirmedUserModelImplCopyWith<$Res> {
  __$$ConfirmedUserModelImplCopyWithImpl(_$ConfirmedUserModelImpl _value,
      $Res Function(_$ConfirmedUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
    Object? permissions = freezed,
    Object? message = freezed,
    Object? isSucceed = freezed,
  }) {
    return _then(_$ConfirmedUserModelImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSucceed: freezed == isSucceed
          ? _value.isSucceed
          : isSucceed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmedUserModelImpl implements _ConfirmedUserModel {
  const _$ConfirmedUserModelImpl(
      {this.token, this.user, this.permissions, this.message, this.isSucceed});

  factory _$ConfirmedUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmedUserModelImplFromJson(json);

  @override
  final String? token;
  @override
  final User? user;
  @override
  final dynamic permissions;
  @override
  final String? message;
  @override
  final bool? isSucceed;

  @override
  String toString() {
    return 'ConfirmedUserModel(token: $token, user: $user, permissions: $permissions, message: $message, isSucceed: $isSucceed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmedUserModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSucceed, isSucceed) ||
                other.isSucceed == isSucceed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user,
      const DeepCollectionEquality().hash(permissions), message, isSucceed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmedUserModelImplCopyWith<_$ConfirmedUserModelImpl> get copyWith =>
      __$$ConfirmedUserModelImplCopyWithImpl<_$ConfirmedUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmedUserModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmedUserModel implements ConfirmedUserModel {
  const factory _ConfirmedUserModel(
      {final String? token,
      final User? user,
      final dynamic permissions,
      final String? message,
      final bool? isSucceed}) = _$ConfirmedUserModelImpl;

  factory _ConfirmedUserModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmedUserModelImpl.fromJson;

  @override
  String? get token;
  @override
  User? get user;
  @override
  dynamic get permissions;
  @override
  String? get message;
  @override
  bool? get isSucceed;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmedUserModelImplCopyWith<_$ConfirmedUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get subscriberId => throw _privateConstructorUsedError;
  String? get arabicName => throw _privateConstructorUsedError;
  String? get englishName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get roleId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? subscriberId,
      String? arabicName,
      String? englishName,
      String? email,
      int? gender,
      String? phoneNumber,
      int? roleId,
      String? imageUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subscriberId = freezed,
    Object? arabicName = freezed,
    Object? englishName = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? roleId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberId: freezed == subscriberId
          ? _value.subscriberId
          : subscriberId // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicName: freezed == arabicName
          ? _value.arabicName
          : arabicName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? subscriberId,
      String? arabicName,
      String? englishName,
      String? email,
      int? gender,
      String? phoneNumber,
      int? roleId,
      String? imageUrl});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subscriberId = freezed,
    Object? arabicName = freezed,
    Object? englishName = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? roleId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberId: freezed == subscriberId
          ? _value.subscriberId
          : subscriberId // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicName: freezed == arabicName
          ? _value.arabicName
          : arabicName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id,
      this.subscriberId,
      this.arabicName,
      this.englishName,
      this.email,
      this.gender,
      this.phoneNumber,
      this.roleId,
      this.imageUrl});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? subscriberId;
  @override
  final String? arabicName;
  @override
  final String? englishName;
  @override
  final String? email;
  @override
  final int? gender;
  @override
  final String? phoneNumber;
  @override
  final int? roleId;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'User(id: $id, subscriberId: $subscriberId, arabicName: $arabicName, englishName: $englishName, email: $email, gender: $gender, phoneNumber: $phoneNumber, roleId: $roleId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subscriberId, subscriberId) ||
                other.subscriberId == subscriberId) &&
            (identical(other.arabicName, arabicName) ||
                other.arabicName == arabicName) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, subscriberId, arabicName,
      englishName, email, gender, phoneNumber, roleId, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      final String? subscriberId,
      final String? arabicName,
      final String? englishName,
      final String? email,
      final int? gender,
      final String? phoneNumber,
      final int? roleId,
      final String? imageUrl}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get subscriberId;
  @override
  String? get arabicName;
  @override
  String? get englishName;
  @override
  String? get email;
  @override
  int? get gender;
  @override
  String? get phoneNumber;
  @override
  int? get roleId;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
