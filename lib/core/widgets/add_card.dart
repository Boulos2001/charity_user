import 'package:cahrity_project/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddOrderCard extends StatelessWidget {
  const AddOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Icon(
        Icons.add,
        size: 40.w.h,
        color: AppColors.red,
      ),
    );
  }
}
