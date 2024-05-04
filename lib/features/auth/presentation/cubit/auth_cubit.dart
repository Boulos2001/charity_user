// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:cahrity_project/core/api/dio_factory.dart';
import 'package:cahrity_project/core/api/handle_exception.dart';
import 'package:cahrity_project/core/dependency_injection/injection_container.dart';
import 'package:cahrity_project/core/session_management/session.dart';
import 'package:cahrity_project/features/auth/data/model/user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_register_model.dart';
import 'package:cahrity_project/features/auth/domain/usecase/confirmation_code_usecase.dart';
import 'package:cahrity_project/features/auth/domain/usecase/login_usecase.dart';
import 'package:cahrity_project/features/auth/domain/usecase/signup_usecase.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> with BaseHandleApi {
  final LoginUsecase loginUsecase;
  final SignUpUsecase signUpUsecase;
  final ConfirmationCodeUsecase confirmCodeUsecase;
  AuthCubit({
    required this.loginUsecase,
    required this.signUpUsecase,
    required this.confirmCodeUsecase,
  }) : super(const AuthState.initial());
  final session = getIt<GlobalSession>();
  //
  Future<bool> login(String email, String password) async {
    try {
      emit(const AuthState.data(loading: true));
      final value = await loginUsecase(email, password);

      emit(const AuthState.data(loading: false));
      session.setToken(value.key ?? "");
      session.setUser(value);
      DioFactory.updateToken(value.key ?? "");
      return true;
    } catch (error) {
      emit(const AuthState.error());
      return false;
    } finally {
      emit(const AuthState.data(loading: false));
    }
  }

  //
  Future<bool> signUp(UserRegisterModel user) async {
    try {
      emit(const AuthState.data(loading: true));
      final value = await signUpUsecase(user);

      emit(const AuthState.data(loading: false));
      session.setUser(value);

      return true;
    } catch (error) {
      emit(const AuthState.error());
      return false;
    } finally {
      emit(const AuthState.data(loading: false));
    }
  }

  //
  Future<bool> confirmCode(String code) async {
    try {
      emit(const AuthState.data(loading: true));
      final user = session.getUser();
      final value = await confirmCodeUsecase(code, user?.data?.id ?? 0);

      emit(const AuthState.data(loading: false));
      //
      final UserResponseModel userConfirmed = UserResponseModel(
        data: UserDataModel(
          id: value.user?.id,
          email: value.user?.email,
          gender: value.user?.gender,
          phoneNumber: value.user?.phoneNumber,
          imageURL: value.user?.imageUrl,
          subscriberId: value.user?.subscriberId
        ),
        key: value.token,
      );
      //
      session.setToken(userConfirmed.key ?? "");
      session.setUser(userConfirmed);

      DioFactory.updateToken(userConfirmed.key ?? "");

      return true;
    } catch (error) {
      emit(const AuthState.error());
      return false;
    } finally {
      emit(const AuthState.data(loading: false));
    }
  }

  //
  void setCode(String code) {
    if (state is DataStates) {
      log("code: $code");
      emit((state as DataStates).copyWith(code: code));
    }
  }
}
