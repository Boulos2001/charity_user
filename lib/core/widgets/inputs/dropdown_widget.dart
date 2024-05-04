import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';

class DropDownWidget<T> extends StatelessWidget {
  const DropDownWidget({
    super.key,
    this.onChanged,
    this.enable,
    this.borderColor = AppColors.lightgrey,
    required this.items,
    this.name = "dropdown",
    this.hint,
    this.initialValue,
    this.fillColor = AppColors.white2,
    this.contentPadding,
    this.prefixIcon,
  });
  final EdgeInsetsGeometry? contentPadding;
  final T? initialValue;
  final Color fillColor;
  final bool? enable;
  final Color borderColor;
  final Widget? prefixIcon;
  final void Function(T?)? onChanged;
  final String name;
  final String? hint;
  final List<DropdownMenuItem<T>> items;
  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<T>(
        enabled: enable ?? true,
        initialValue: initialValue,
        name: name,
        style: AppTextStyles.regular16.copyWith(color: Colors.black),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null) {
            return "field_required".tr();
          } else {
            return null;
          }
        },
        icon: const Icon(Icons.keyboard_arrow_down_outlined,
            color: AppColors.grey),
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor)),
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          helperStyle: AppTextStyles.regular14.copyWith(color: AppColors.grey),
          hintStyle: AppTextStyles.regular14.copyWith(color: AppColors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.secondary),
          ),
          hintText: hint,
          prefixIcon: prefixIcon,
        ),
        onChanged: onChanged,
        items: items);
  }
}
