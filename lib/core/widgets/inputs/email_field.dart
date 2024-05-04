import 'package:flutter/material.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/utils/validator.dart';
import 'package:cahrity_project/core/widgets/inputs/textfield_widget.dart';

class EmailField extends StatefulWidget {
  const EmailField({
    super.key,
    this.borderColor = AppColors.lightgrey,
    this.color = AppColors.white2,
    this.onchanged,
    this.validator,
    this.enable = true,
    required this.emailController,
  });
  final TextEditingController? emailController;
  final Color color;
  final Color borderColor;
  final bool enable;

  final String? Function(String?)? validator;
  final void Function(String?)? onchanged;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      keyboardType: TextInputType.emailAddress,
      enable: widget.enable,
      controller: widget.emailController,
      onChanged: widget.onchanged,
      borderColor: widget.borderColor,
      name: "email",
      validator:
          widget.validator ?? (value) => Validator.validateEmail(email: value!),
      fillColor: widget.color,
      hint: "example@gmail.com",
    );
  }
}
