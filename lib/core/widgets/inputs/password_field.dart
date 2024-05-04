import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';
import 'package:cahrity_project/core/utils/app_regx.dart';
import 'package:cahrity_project/core/utils/validator.dart';
import 'package:cahrity_project/core/widgets/inputs/textfield_widget.dart';

class PasswordFieled extends StatefulWidget {
  const PasswordFieled({
    super.key,
    required this.passwordController,
    this.validator = Validator.validatePassword,
    this.hint = "enter_password",
    this.color = AppColors.white2,
  });

  final TextEditingController? passwordController;
  final String? Function(String?)? validator;
  final String? hint;
  final Color color;
  @override
  State<PasswordFieled> createState() => _PasswordFieledState();
}

class _PasswordFieledState extends State<PasswordFieled> {
  void Function()? onPressed;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFieldWidget(
          controller: widget.passwordController,
          onChanged: (p0) {
            setState(() {
              widget.passwordController?.text = p0 ?? "";
            });
          },
          name: "password",
          validator: widget.validator,
          visible: visible,
          isPassword: true,
          suffixIcon: IconButton(
            icon: Icon(
              !visible ? Icons.visibility : Icons.visibility_off,
              size: 20.w,
              color: AppColors.grey,
            ),
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
          ),
          fillColor: widget.color,
          hint: widget.hint?.tr(),
        ),
       ],
    );
  }
}
