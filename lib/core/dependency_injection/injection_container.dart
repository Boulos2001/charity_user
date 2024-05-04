import 'package:cahrity_project/features/auth/data/dataresource/auth_dataresource.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cahrity_project/core/api/dio_factory.dart';
import 'package:cahrity_project/core/dependency_injection/injection_container.config.dart';
import 'package:cahrity_project/core/network_info/network_info.dart';
import 'package:cahrity_project/core/session_management/session.dart';
import 'package:cahrity_project/core/session_management/session_impl.dart';

/// Using GetIt for dependency injection with injectable package to generate the code for us
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async => await getIt.init();

@module
abstract class AppModule {
  // Pre-resolve SharedPreferences for efficient use
  @preResolve
  Future<SharedPreferences> get sharedPreferencesInstance =>
      SharedPreferences.getInstance();

  // Provide a singleton instance of Dio using DioFactory
  Dio get dio => DioFactory.getDio();

  // Provide singleton instances for various services and dependencies
  @lazySingleton
  NetworkInfo get networkInfo =>
      NetworkInfoImpl(getIt<InternetConnectionChecker>());

  @lazySingleton
  GlobalSession get globalSession => GlobalSessionImpl(
        getIt<SharedPreferences>(),
      );

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();
}

// data_resources_module.dart

@module
abstract class DataResourcesModule {
  // Provide a singleton instance of AuthDataResource
  @lazySingleton
  AuthDataResource get authDataresource => AuthDataResource(getIt<Dio>());
}
