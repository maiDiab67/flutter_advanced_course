import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/di/dependancy_injection.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_advanced_course/features/home/ui/home_screen.dart';
import 'package:flutter_advanced_course/features/login/logic/login/login_cubit.dart';
import 'package:flutter_advanced_course/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_course/features/onboarding/onboarding_screen.dart';
import 'package:flutter_advanced_course/features/sign_up/ui/sign_up_svreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/sign_up/logic/sign_up/sign_up_cubit.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (arguments as  ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route for this ${settings.name}')),
          ),
        );
    }
  }
}
