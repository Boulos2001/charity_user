// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Color color;
  final String? title;
  final double width;
  final double height;
  final double radius;
  final TextStyle? style;
  final Widget? icon;
  final bool loading;
  const ButtonWidget({
    super.key,
    this.color = AppColors.secondary,
    required this.onPressed,
    this.title,
    this.width = double.infinity,
    this.loading = false,
    this.height = 40,
    this.radius = 6,
    this.icon,
    this.style,
  });
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          maximumSize: MaterialStateProperty.all(Size(width, height)),
          minimumSize: MaterialStateProperty.all(Size(width, height)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius.r),
          ))),
      child: loading
          ? SizedBox(
              height: 25.w,
              width: 25.w,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                icon ?? const SizedBox(),
                SizedBox(width: icon == null ? 0 : 8.w),
                Text(
                  title ?? "Button",
                  style: style ??
                      AppTextStyles.bold18.copyWith(color: Colors.white),
                ),
              ],
            ),
    );
  }
}
