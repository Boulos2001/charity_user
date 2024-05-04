import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    this.name = "text",
    this.fillColor = Colors.white,
    this.borderColor = AppColors.lightgrey,
    this.hint,
    this.maxLength,
    this.enable = true,
    this.isPassword = false,
    this.visible = true,
    this.maxLines = 1,
    this.prefix,
    this.suffixIcon,
    this.isRequired = true,
    this.prefixIcon,
    this.keyboardType,
    this.inputFormatters,
    required this.controller,
    this.validator,
    this.contentPadding,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
  });
  final String name;
  final Color fillColor;
  final Color borderColor;
  final String? hint;
  final int? maxLength;
  final bool enable;
  final bool isPassword;
  final bool visible;
  final bool isRequired;
  final int? maxLines;
  final Widget? prefix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSubmitted;
  final void Function()? onTap;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  //
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FormBuilderTextField(
        enabled: widget.enable,
        focusNode: _focusNode,
        name: widget.name,
        controller: widget.controller,
        obscureText: !widget.visible,
        textInputAction: TextInputAction.done,
        enableSuggestions: !widget.isPassword,
        autocorrect: !widget.isPassword,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        maxLength: widget.maxLength,
        inputFormatters: widget.inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
        style: AppTextStyles.regular16.copyWith(color: Colors.black),
        onEditingComplete: () {
          // This callback is triggered when the user presses "OK" on the keyboard
          _focusNode.unfocus(); // Close the keyboard
        },
        decoration: InputDecoration(
            prefix: widget.prefix,
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: widget.borderColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: widget.borderColor)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.red)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.red)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: widget.borderColor)),
            contentPadding: widget.contentPadding ??
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            filled: true,
            fillColor: widget.fillColor,
            hintText: widget.hint,
            helperStyle:
                AppTextStyles.regular14.copyWith(color: AppColors.grey2),
            hintStyle: AppTextStyles.regular14.copyWith(color: AppColors.grey2),
            border: InputBorder.none),
      ),
    );
  }
}
