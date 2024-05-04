import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cahrity_project/core/constants/styles.dart';

class PageErrorWidget extends StatelessWidget {
  const PageErrorWidget({
    super.key,
    required this.message,
    this.onPressed,
    this.widget,
  });
  final String message;
  final Widget? widget;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget ?? const SizedBox.shrink(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
          child: Text(
            message,
            style: AppTextStyles.medium16,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 40.h),
        onPressed == null
            ? const SizedBox.shrink()
            : IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.replay_outlined, size: 50.w))
      ],
    ));
  }
}
