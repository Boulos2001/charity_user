// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter/material.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../features/auth/data/dataresource/auth_dataresource.dart' as _i10;
import '../../features/auth/data/repositories/auth_repository_imp.dart' as _i12;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i11;
import '../../features/auth/domain/usecase/confirmation_code_usecase.dart'
    as _i14;
import '../../features/auth/domain/usecase/login_usecase.dart' as _i15;
import '../../features/auth/domain/usecase/signup_usecase.dart' as _i16;
import '../../features/auth/presentation/cubit/auth_cubit.dart' as _i17;
import '../handle_controller/handle_cubit.dart' as _i5;
import '../network_info/network_info.dart' as _i6;
import '../session_management/session.dart' as _i7;
import '../session_management/session_impl.dart' as _i13;
import 'injection_container.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final dataResourcesModule = _$DataResourcesModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => appModule.sharedPreferencesInstance,
      preResolve: true,
    );
    gh.factory<_i4.Dio>(() => appModule.dio);
    gh.factory<_i5.HandleCubit>(() => _i5.HandleCubit());
    gh.lazySingleton<_i6.NetworkInfo>(() => appModule.networkInfo);
    gh.lazySingleton<_i7.GlobalSession>(() => appModule.globalSession);
    gh.lazySingleton<_i8.InternetConnectionChecker>(
        () => appModule.internetConnectionChecker);
    gh.lazySingleton<_i9.GlobalKey<_i9.NavigatorState>>(
        () => appModule.navigatorKey);
    gh.lazySingleton<_i10.AuthDataResource>(
        () => dataResourcesModule.authDataresource);
    gh.lazySingleton<_i11.AuthRepository>(() =>
        _i12.AuthRepositoryImp(authDataresource: gh<_i10.AuthDataResource>()));
    gh.lazySingleton<_i13.GlobalSessionImpl>(
        () => _i13.GlobalSessionImpl(gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i14.ConfirmationCodeUsecase>(
        () => _i14.ConfirmationCodeUsecase(gh<_i11.AuthRepository>()));
    gh.lazySingleton<_i15.LoginUsecase>(
        () => _i15.LoginUsecase(gh<_i11.AuthRepository>()));
    gh.lazySingleton<_i16.SignUpUsecase>(
        () => _i16.SignUpUsecase(gh<_i11.AuthRepository>()));
    gh.lazySingleton<_i6.NetworkInfoImpl>(
        () => _i6.NetworkInfoImpl(gh<_i8.InternetConnectionChecker>()));
    gh.factory<_i17.AuthCubit>(() => _i17.AuthCubit(
          loginUsecase: gh<_i15.LoginUsecase>(),
          signUpUsecase: gh<_i16.SignUpUsecase>(),
          confirmCodeUsecase: gh<_i14.ConfirmationCodeUsecase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i18.AppModule {}

class _$DataResourcesModule extends _i18.DataResourcesModule {}
