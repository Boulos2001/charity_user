import 'dart:io';

import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';
import 'package:cahrity_project/core/widgets/button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart' as path;


class AppDialogs {
  static logoutDialog(BuildContext context, void Function()? onConfirm) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "logout".tr(),
            style: AppTextStyles.bold16,
          ).center(),
          content: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "msg_logout".tr(),
              style: AppTextStyles.regular14.copyWith(color: Colors.black),
            ),
          ]),
          contentPadding: EdgeInsets.all(16.w),
          actions: <Widget>[
            Row(
              children: [
                Flexible(
                  child: ButtonWidget(
                    onPressed: onConfirm,
                    radius: 12,
                    color: AppColors.red,
                    title: "confirm".tr(),
                    style: AppTextStyles.bold14.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(width: 16.w),
                Flexible(
                  child: ButtonWidget(
                    onPressed: () => context.pop(),
                    radius: 12,
                    color: AppColors.whiteGrey,
                    style: AppTextStyles.bold14.copyWith(color: Colors.white),
                    title: "cancel".tr(),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
