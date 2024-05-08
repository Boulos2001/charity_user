import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:cahrity_project/core/dependency_injection/injection_container.dart';
import 'package:cahrity_project/features/auth/presentation/pages/login_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cahrity_project/core/constants/colors.dart';
import 'package:cahrity_project/core/dependency_injection/injection_container.dart';
import 'package:cahrity_project/core/firebase/firbase_notifications.dart';
import 'package:cahrity_project/core/handle_controller/handle_cubit.dart';
import 'package:cahrity_project/core/router/app_router.dart';
import 'package:cahrity_project/core/session_management/session.dart';
import 'package:cahrity_project/core/utils/bloc_observer.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

//  await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );

  // await NotificationInitial().registerOnFirebase();
  // await Future.wait([
  //   // initGlobalGetIt(),
  //   EasyLocalization.ensureInitialized(),

  // ]);

  if (getIt<GlobalSession>().getLang() == null) {
    getIt<GlobalSession>()
        .setLang('ar'); //TODO: config the langauge like device language
  }

  //
  final botToastBuilder = BotToastInit();
  Bloc.observer = MyGlobalObserver();
  runApp(EasyLocalization(
      supportedLocales: const [Locale("ar"), Locale("en")],
      startLocale: Locale(getIt<GlobalSession>().getLang() ?? "ar"),
      path: "assets/translation",
      child: MainApp(botToastBuilder: botToastBuilder)));
}

class MainApp extends StatelessWidget {
  final TransitionBuilder? botToastBuilder;
  const MainApp({super.key, this.botToastBuilder});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HandleCubit>(
      create: (context) => HandleCubit(),
      child: ScreenUtilInit(
          designSize: const Size(428, 926),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(

              routerConfig: AppRouter.goRouter,
              debugShowCheckedModeBanner: false,
              // routerConfig: AppRouter.goRouter,
              locale: context.locale,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              theme: ThemeData(
                fontFamily: 'Tajawal',
                primaryColor: AppColors.primaryBlue,
                colorScheme: ColorScheme.fromSwatch()
                    .copyWith(
                        secondary: AppColors.secondary,
                        primary: AppColors.primaryBlue)
                    .copyWith(background: Colors.white)
                    .copyWith(surfaceTint: Colors.white),
              ),
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: botToastBuilder!(
                    context,
                    GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: BlocListener<HandleCubit, HandleState>(
                            listenWhen: (previous, current) =>
                                previous != current,
                            listener: (context, state) {
                              if (state is ErrorState) {
                                final snackBar = SnackBar(
                                  elevation: 0,
                                  duration: const Duration(seconds: 3),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: "error".tr(),
                                    message: state.message,
                                    contentType: ContentType.failure,
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(snackBar);
                              }
                              //
                              else if (state is SuccessState) {
                                final snackBar = SnackBar(
                                  duration: const Duration(seconds: 3),
                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: "operation_success".tr(),
                                    message: state.message,
                                    contentType: ContentType.success,
                                    color: Colors.green[300],
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(snackBar);
                              }
                            },
                            child: child)),
                  ),
                );
              },
            );
          }),
    );
  }
}
