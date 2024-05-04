// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:injectable/injectable.dart';
import 'package:cahrity_project/core/api/handle_exception.dart';
import 'package:cahrity_project/features/auth/data/dataresource/auth_dataresource.dart';
import 'package:cahrity_project/features/auth/data/model/confirmed_user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_register_model.dart';
import 'package:cahrity_project/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImp with BaseHandleApi implements AuthRepository {
  AuthDataResource authDataresource;
  AuthRepositoryImp({
    required this.authDataresource,
  });
  @override
  Future<UserResponseModel> login(String username, String password) async {
    return await authDataresource
        .login(username, password)
        .catchError(handleError);
  }

  @override
  Future<ConfirmedUserModel> confirmationCode(String code, int id) async {
    final res = await authDataresource
        .confirmationCode(code, id)
        .catchError(handleError);
    return res.data;
  }

  @override
  Future<UserResponseModel> signUp(UserRegisterModel user) async {
    return await authDataresource.signUp(user).catchError(handleError);
  }
}
