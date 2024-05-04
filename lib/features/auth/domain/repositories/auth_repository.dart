import 'package:cahrity_project/features/auth/data/model/confirmed_user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_register_model.dart';

abstract class AuthRepository {
  Future<UserResponseModel> login(String username, String password);
  Future<ConfirmedUserModel> confirmationCode(String code, int id);
  Future<UserResponseModel> signUp(UserRegisterModel user);
}
