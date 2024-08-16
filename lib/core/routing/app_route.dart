import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/routing/routes.dart';
import 'package:doc/features/home/data/repos/home_repo.dart';
import 'package:doc/features/home/ui/views/home_screen.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_cubit.dart';
import 'package:doc/features/login/ui/manager/cubit/login_cubit.dart';
import 'package:doc/features/login/ui/views/login_screen.dart';
import 'package:doc/features/onboarding/onboarding.dart';
import 'package:doc/features/sign_up/ui/manager/cubit/sign_up_cubit.dart';
import 'package:doc/features/sign_up/ui/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route getroute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (context) => const Onboarding(),
        );
      case Routes.signUP:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUp(),
          ),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeCubit(getIt.get<HomeRepo>()),
            child: const HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          ),
        );
    }
  }
}
