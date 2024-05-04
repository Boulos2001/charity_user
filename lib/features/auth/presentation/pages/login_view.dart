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
import 'package:cahrity_project/features/auth/presentation/widgets/login_form.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    print('sdadsa ${getIt<GlobalKey<NavigatorState>>().currentContext}');
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child:  Scaffold(
          backgroundColor: AppColors.background,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginForm(),
              SizedBox(height: 30.h,),
                RichText(
              text: TextSpan(
                  text: "have_no_account".tr(),
                  style: AppTextStyles.medium18.copyWith(fontFamily: "Tajawal"),
                  children: [
                    TextSpan(
                        text: " ${"create_account".tr()}",
                        style: AppTextStyles.bold18.copyWith(
                            color: AppColors.primaryGreen,
                            fontFamily: "Tajawal"))
                  ]),
            ).center().inkwell(
              onTap: () {
                context.push("/sign_up");
              },
            ),
            ],
          )),
    );
  }
}
