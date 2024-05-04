import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/dependency_injection/injection_container.dart';
import 'package:cahrity_project/core/extensions/widget_extenstions/extension_widget.dart';
import 'package:cahrity_project/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:cahrity_project/features/auth/presentation/widgets/signup_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: Scaffold(
          backgroundColor: AppColors.background,
          body: ListView(
            children: [
              SizedBox(height: 30.h),
              // SvgPicture.asset("assets/svg/logo.svg", width: 180.w),

              const SignUpFrom().paddingSymmetric(h: 24.w)
            ],
          )),
    );
  }
}
