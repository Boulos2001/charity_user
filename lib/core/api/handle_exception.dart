import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cahrity_project/core/api/exceptions.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/dependency_injection/injection_container.dart';
import 'package:cahrity_project/core/handle_controller/handle_cubit.dart';

mixin BaseHandleApi {
  final ctx = getIt<GlobalKey<NavigatorState>>().currentContext!;

  handleError(exception) {
    if (exception.error is FetchDataException) {
      ctx
          .read<HandleCubit>()
          .errorOperation(exception.error.message ?? "Something Wrong");
    }
    //
    else if (exception.error is InvalidInputException) {
      ctx
          .read<HandleCubit>()
          .errorOperation(exception.error.message ?? "Something Wrong");
    }
    //
    else if (exception.error is UnauthorisedException) {
      sessionExpiredDialog();
    }
    //
    else if (exception.error is ApiNotRespondingException) {
      ctx
          .read<HandleCubit>()
          .errorOperation(exception.error.message ?? "Something Wrong");
    }
  }

  sessionExpiredDialog() {
    showDialog(
      barrierDismissible: false,
      context: getIt<GlobalKey<NavigatorState>>().currentContext!,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: AlertDialog(
            title: Text("error".tr()),
            content: Text(
              "error_unauth".tr(),
              style: AppTextStyles.regular18.copyWith(color: Colors.grey[850]),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () async {
                  getIt<SharedPreferences>().clear();
                  context.go('/select_language');
                },
                child: Text("Sign In", style: AppTextStyles.bold18),
              ),
            ],
          ),
        );
      },
    );
  }
}
