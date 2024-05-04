import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({
    super.key,
    this.onChanged,
    this.borderColor = AppColors.lightgrey,
    this.fillColor = AppColors.white2,
    this.name = "date",
    this.enable = true,
    this.initialDate,
    required this.controller,
    this.contentPadding,
    required this.hint,
    required this.validator,
  });
  final EdgeInsetsGeometry? contentPadding;
  final void Function(DateTime?)? onChanged;
  final TextEditingController? controller;
  final Color borderColor;
  final bool enable;

  final String name;
  final String? initialDate;
  final Color fillColor;
  final String hint;
  final String? Function(DateTime?)? validator;
  @override
  State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      enabled: widget.enable,
      initialValue: widget.initialDate?.isNotEmpty ?? false
          ? DateTime.parse(widget.initialDate!)
          : null,
      controller: widget.controller,
      style: AppTextStyles.regular16.copyWith(color: Colors.black),
      validator: widget.validator,
      inputType: InputType.date,
      fieldHintText: widget.hint,
      format: DateFormat('yyyy-M-d'),
      onChanged: widget.onChanged,
      decoration: InputDecoration(
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
        helperStyle: AppTextStyles.regular14.copyWith(color: AppColors.grey2),
        hintStyle: AppTextStyles.regular14.copyWith(color: AppColors.grey2),
        border: InputBorder.none,
      ),
      name: widget.name,
      firstDate: DateTime.now(),
      lastDate: DateTime(2222),
    );
  }
}
