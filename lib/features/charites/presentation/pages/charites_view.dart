import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';
import 'package:cahrity_project/core/widgets/add_card.dart';
import 'package:cahrity_project/core/widgets/inputs/textfield_widget.dart';
import 'package:cahrity_project/features/charites/presentation/widgets/charities_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharitiesView extends StatelessWidget {
  CharitiesView({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120.h,
              width: 430.w,
              decoration: BoxDecoration(
                color: AppColors.red,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 300.w,
                        child: TextFieldWidget(
                          hint: "search".tr(),
                          visible: false,
                          controller: searchController,
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      AddOrderCard(),
                    ],
                  ).paddingSymmetric(h: 24.w)
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16.h,
                    );
                  },
                  itemBuilder: (context, index) {
                    return CharitiesCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
