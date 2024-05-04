import 'package:cahrity_project/core/widgets/inputs/textfield_widget.dart';
import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/constants/toast.dart';
import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';
import 'package:cahrity_project/core/utils/validator.dart';
import 'package:cahrity_project/core/widgets/button_widget.dart';
import 'package:cahrity_project/core/widgets/inputs/email_field.dart';
import 'package:cahrity_project/core/widgets/inputs/password_field.dart';
import 'package:cahrity_project/core/widgets/inputs/phone_field.dart';
import 'package:cahrity_project/features/auth/data/model/user_register_model.dart';
import 'package:cahrity_project/features/auth/presentation/cubit/auth_cubit.dart';

class SignUpFrom extends StatefulWidget {
  const SignUpFrom({
    super.key,
  });

  @override
  State<SignUpFrom> createState() => _SignUpFromState();
}

class _SignUpFromState extends State<SignUpFrom> {
  final _formkey = GlobalKey<FormBuilderState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool acceptTerms = false;
  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "first_name".tr(),
            style: AppTextStyles.bold14,
          ).paddingAll(4),
          TextFieldWidget(
            controller: firstNameController,
            hint: 'enter_fname'.tr(),
          ),
          SizedBox(height: 16.h),
          Text(
            "last_name".tr(),
            style: AppTextStyles.bold14,
          ).paddingAll(4),
          TextFieldWidget(
            controller: lastNameController,
            hint: 'enter_lname'.tr(),
          ),
          SizedBox(height: 16.h),
          Text(
            "email".tr(),
            style: AppTextStyles.bold14,
          ).paddingAll(4),
          EmailField(emailController: emailController),
          SizedBox(height: 16.h),

          Text(
            "phone".tr(),
            style: AppTextStyles.bold14,
          ).paddingAll(4),
          PhoneField(phoneController: phoneController),
          SizedBox(height: 16.h),
          Text(
            "address".tr(),
            style: AppTextStyles.bold14,
          ).paddingAll(4),
          TextFieldWidget(
            controller: addressController,
            hint: 'enter_address'.tr(),
          ),
          SizedBox(height: 16.h),
          Text(
            "password".tr(),
            style: AppTextStyles.bold14,
          ).paddingAll(4),

          PasswordFieled(passwordController: passwordController),

          SizedBox(height: 16.h),
          Text(
            "confirm_password".tr(),
            style: AppTextStyles.bold14,
          ).paddingAll(4),
          PasswordFieled(
            passwordController: confirmPasswordController,
            validator: (pass1) {
              return Validator.validateConfirmPassword(
                  pass1, passwordController.text);
            },
            hint: "confirm_password",
          ), // p,
          SizedBox(height: 20.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    acceptTerms = !acceptTerms;
                  });
                },
                child: Container(
                  width: 24.w,
                  height: 24.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: acceptTerms ? AppColors.green : AppColors.grey),
                  child: acceptTerms
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 18,
                        )
                      : const SizedBox.shrink(),
                ),
              ),
              SizedBox(width: 10.w),
              Row(
                children: [
                  Text("accepts_on".tr(), style: AppTextStyles.regular14),
                  Text("policy".tr(),
                          style: AppTextStyles.medium14
                              .copyWith(color: AppColors.primaryBlue))
                      .inkwell(onTap: () {}),
                  Text("and".tr(), style: AppTextStyles.regular14),
                  Text("terms".tr(),
                          style: AppTextStyles.medium14
                              .copyWith(color: AppColors.primaryBlue))
                      .inkwell(onTap: () {}),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Builder(builder: (context) {
            return BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return ButtonWidget(
                  title: "create_account".tr(),
                  loading: state.mapOrNull(
                        data: (value) => value.loading,
                      ) ??
                      false,
                  color: acceptTerms ? AppColors.secondary : AppColors.grey,
                  onPressed: () {
                    if (!acceptTerms) {
                      return;
                    }
                    if (_formkey.currentState!.validate()) {
                      // final user = UserRegisterModel(

                      // );
                      // context.read<AuthCubit>().signUp(user).then(
                      //       (value) => value ? context.go("/otp") : null,
                      //     );
                    }
                  },
                );
              },
            );
          }),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
                text: "have_account".tr(),
                style: AppTextStyles.medium18.copyWith(fontFamily: "Tajawal"),
                children: [
                  TextSpan(
                      text: " ${"signin".tr()}",
                      style: AppTextStyles.bold16.copyWith(
                          color: AppColors.primaryBlue, fontFamily: "Tajawal"))
                ]),
          ).center().inkwell(
            onTap: () {
              context.go("/login");
            },
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
