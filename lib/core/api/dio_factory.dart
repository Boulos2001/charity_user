import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:cahrity_project/core/api/exceptions.dart';
import 'package:cahrity_project/core/dependency_injection/injection_container.dart';
import 'package:cahrity_project/core/session_management/session.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;
  static Dio getDio() {
    final session = getIt<GlobalSession>();
    Duration timeOut = const Duration(seconds: 120);

    if (dio == null) {
      dio = Dio();
      dio?.options.headers['Authorization'] =
          "Bearer ${session.getToken() ?? ""}";
      dio?.options.headers['lang'] = session.getLang() ?? "";
      dio?.options.headers['Content-Type'] = 'application/json';

      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void updateToken(String newToken) {
    final session = getIt<GlobalSession>();
    session.setToken(newToken);
    dio?.options.headers['Authorization'] = 'Bearer $newToken';
  }

  static void addDioInterceptor() {
    dio?.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        request: true,
        error: true,
        compact: true,
      ),
      ApiExceptions(),
      LogFormDataInterceptor(),
      InterceptorsWrapper(
        onRequest: (
          RequestOptions options,
          RequestInterceptorHandler handler,
        ) {
          if (options.contentType == null) {
            final dynamic data = options.data;
            final String? contentType;
            if (data is FormData) {
              contentType = Headers.multipartFormDataContentType;
            } else if (data is Map) {
              contentType = Headers.formUrlEncodedContentType;
            } else if (data is String) {
              contentType = Headers.jsonContentType;
            } else if (data != null) {
              contentType = Headers
                  .textPlainContentType; // Can be removed if unnecessary.
            } else {
              contentType = null;
            }
            options.contentType = contentType;
          }
          handler.next(options);
        },
      )
    ]);
  }
}

class ApiExceptions extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);

    switch (err.response?.statusCode) {
      case 400:
      case 422:
        throw InvalidInputException(
            err.response?.data["message"] ?? "error_input".tr());
      case 401:
      case 403:
        throw UnauthorisedException(
            err.response?.data["message"] ?? "error_unauth".tr());
      case 404:
        throw FetchDataException(
            err.response?.data["message"] ?? "error_not_found".tr());

      case 500:
        throw FetchDataException(
            err.response?.data["message"] ?? "error_server".tr());
      default:
        throw FetchDataException("error_server".tr());
    }
  }
}

class LogFormDataInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.data is FormData) {
      FormData formData = options.data as FormData;
      log('FormData:');
      for (var action in formData.fields) {
        log('${action.key}: ${action.value}');
      }
      for (var action in formData.files) {
        log('${action.key}: ${action.value}');
      }
      log('');
    }
    super.onRequest(options, handler);
  }
}
