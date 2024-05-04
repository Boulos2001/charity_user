// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:injectable/injectable.dart';
import 'package:cahrity_project/features/auth/data/model/user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_register_model.dart';
import 'package:cahrity_project/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class SignUpUsecase {
  AuthRepository authRepository;
  SignUpUsecase(
    this.authRepository,
  );

  Future<UserResponseModel> call(UserRegisterModel user) async {
    return await authRepository.signUp(user);
  }
}
