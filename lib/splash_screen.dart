import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/constants/styles.dart';
import 'package:cahrity_project/core/utils/check_version.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String version = "";
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await VersionHelper.getCurrentVersion().then((value) {
        setState(() {
          version = value;
        });
      });
      await redirect();
    });
    super.initState();
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      context.go("/");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 104.h,
              left: 85.w,
              right: 85.w,
              child: SvgPicture.asset(
                "assets/svg/logo_vertical.svg",
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(
              "assets/svg/left_shape_colorful2.svg",
            ),
          ),
          Positioned(
            bottom: 117.h,
            child: Text(
              "${"version".tr()} $version",
              style: AppTextStyles.medium14.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
