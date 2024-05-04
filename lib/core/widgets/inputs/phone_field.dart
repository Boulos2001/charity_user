import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';
import 'package:cahrity_project/core/utils/validator.dart';
import 'package:cahrity_project/core/widgets/inputs/textfield_widget.dart';

class PhoneField extends StatefulWidget {
  final TextEditingController phoneController;
  final Color color;
  final Color borderColor;
  final void Function(String?)? onChanged;
  final bool enable;
  const PhoneField({
    super.key,
    required this.phoneController,
    this.onChanged,
    this.enable = true,
    this.color = AppColors.white2,
    this.borderColor = AppColors.lightgrey,
  });

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: widget.color,
                border: Border.all(color: widget.borderColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                )),
            // width: 90.w,
            child: Row(children: [
              SvgPicture.asset(
                "assets/svg/ar.svg",
                width: 30.w,
              ).paddingSymmetric(h: 10.w),
              Text(
                "+963",
                style: AppTextStyles.regular16.copyWith(color: AppColors.grey2),
              )
            ]),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: TextFieldWidget(
                enable: widget.enable,
                controller: widget.phoneController,
                name: "phone",
                onChanged: widget.onChanged,
                fillColor: widget.color,
                borderColor: widget.borderColor,
                keyboardType: TextInputType.phone,
                validator: (v) => Validator.validatePhone(phone: v),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(9),
                ],
                hint: "000 000 000",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
