// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:injectable/injectable.dart';
import 'package:cahrity_project/features/auth/data/model/confirmed_user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_model.dart';
import 'package:cahrity_project/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class ConfirmationCodeUsecase {
  AuthRepository authRepository;
  ConfirmationCodeUsecase(
    this.authRepository,
  );

  Future<ConfirmedUserModel> call(String code, int id) async {
    return await authRepository.confirmationCode(code, id);
  }
}
