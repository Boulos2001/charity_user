// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegisterModel _$UserRegisterModelFromJson(Map<String, dynamic> json) {
  return _UserRegister.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterModel {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterModelCopyWith<UserRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterModelCopyWith<$Res> {
  factory $UserRegisterModelCopyWith(
          UserRegisterModel value, $Res Function(UserRegisterModel) then) =
      _$UserRegisterModelCopyWithImpl<$Res, UserRegisterModel>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String phone,
      String address,
      String type,
      String email,
      String password});
}

/// @nodoc
class _$UserRegisterModelCopyWithImpl<$Res, $Val extends UserRegisterModel>
    implements $UserRegisterModelCopyWith<$Res> {
  _$UserRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? address = null,
    Object? type = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegisterImplCopyWith<$Res>
    implements $UserRegisterModelCopyWith<$Res> {
  factory _$$UserRegisterImplCopyWith(
          _$UserRegisterImpl value, $Res Function(_$UserRegisterImpl) then) =
      __$$UserRegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String phone,
      String address,
      String type,
      String email,
      String password});
}

/// @nodoc
class __$$UserRegisterImplCopyWithImpl<$Res>
    extends _$UserRegisterModelCopyWithImpl<$Res, _$UserRegisterImpl>
    implements _$$UserRegisterImplCopyWith<$Res> {
  __$$UserRegisterImplCopyWithImpl(
      _$UserRegisterImpl _value, $Res Function(_$UserRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? address = null,
    Object? type = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserRegisterImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegisterImpl implements _UserRegister {
  const _$UserRegisterImpl(
      {required this.firstName,
      required this.lastName,
      required this.phone,
      required this.address,
      required this.type,
      required this.email,
      required this.password});

  factory _$UserRegisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegisterImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String type;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserRegisterModel(firstName: $firstName, lastName: $lastName, phone: $phone, address: $address, type: $type, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, phone, address, type, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterImplCopyWith<_$UserRegisterImpl> get copyWith =>
      __$$UserRegisterImplCopyWithImpl<_$UserRegisterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegisterImplToJson(
      this,
    );
  }
}

abstract class _UserRegister implements UserRegisterModel {
  const factory _UserRegister(
      {required final String firstName,
      required final String lastName,
      required final String phone,
      required final String address,
      required final String type,
      required final String email,
      required final String password}) = _$UserRegisterImpl;

  factory _UserRegister.fromJson(Map<String, dynamic> json) =
      _$UserRegisterImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phone;
  @override
  String get address;
  @override
  String get type;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserRegisterImplCopyWith<_$UserRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
