// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cahrity_project/core/dependency_injection/injection_container.dart';
import 'package:cahrity_project/core/session_management/session.dart';
import 'package:cahrity_project/features/auth/presentation/pages/login_view.dart';
import 'package:cahrity_project/features/auth/presentation/pages/signup_view.dart';
import 'package:cahrity_project/features/charites/presentation/pages/charites_view.dart';
import 'package:cahrity_project/features/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
      navigatorKey: getIt<GlobalKey<NavigatorState>>(),
      debugLogDiagnostics: true,
      initialLocation: "/charites_view",
      routes: [
        GoRoute(
            path: "/",
            name: "root",
            redirect: (context, state) async {
              final token = getIt<GlobalSession>().getToken();
              if ((token?.isEmpty ?? true)) {
                return "/login";
              } else {
                return "/login";
              }
            },
            routes: const []),
        GoRoute(
            path: "/login",
            name: "login",
            builder: (context, state) => const LoginView()),
        GoRoute(
            path: "/sign_up",
            name: "sign_up",
            builder: (context, state) => const SignUpView()),
        GoRoute(
            path: "/home",
            name: "home",
            builder: (context, state) => const HomePage()),
            GoRoute(
            path: "/charites_view",
            name: "charites_view",
            builder: (context, state) =>  CharitiesView())
      ]);
}
