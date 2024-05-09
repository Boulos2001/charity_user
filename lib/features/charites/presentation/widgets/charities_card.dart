import 'package:cahrity_project/core/constants/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharitiesCard extends StatelessWidget {
  const CharitiesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 400.w,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.grey ,width: 0.w),
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                'assets/png/charities.png',
                // height: 180.h,
                width: 100.w,
                fit: BoxFit.fill,
              )),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "association_name".tr(),
                style: AppTextStyles.bold16,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "description_association".tr(),
                style: AppTextStyles.medium18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
