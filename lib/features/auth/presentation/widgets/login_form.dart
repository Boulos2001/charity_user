import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';
import 'package:cahrity_project/core/utils/validator.dart';
import 'package:cahrity_project/core/widgets/button_widget.dart';
import 'package:cahrity_project/core/widgets/inputs/email_field.dart';
import 'package:cahrity_project/core/widgets/inputs/password_field.dart';
import 'package:cahrity_project/features/auth/presentation/cubit/auth_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  TextEditingController? emailController;
  TextEditingController? passwordController;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24.h),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: FormBuilder(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "email".tr(),
              style: AppTextStyles.bold14.copyWith(color: AppColors.darkgrey),
            ).paddingAll(4),
            EmailField(emailController: emailController),
            SizedBox(height: 20.h),
            Text(
              "password".tr(),
              style: AppTextStyles.bold14.copyWith(color: AppColors.darkgrey),
            ).paddingAll(4),
            PasswordFieled(
              passwordController: passwordController,
              validator: (v) => Validator.validateText(value: v),
            ),
            SizedBox(height: 20.h),
            Builder(builder: (context) {
              return BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return ButtonWidget(
                    loading: ((state is DataStates) && state.loading),
                    title: "signin".tr(),
                    onPressed: () {
                  context.push("/home");

                      // if (_formKey.currentState!.validate()) {
                      //   context
                      //       .read<AuthCubit>()
                      //       .login(
                      //           emailController!.text, passwordController!.text)
                      //       .then(
                      //           (value) => value ? context.go("/home") : null);
                      // }
                    },
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
