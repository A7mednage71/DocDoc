import 'package:doc/core/routing/routes.dart';
import 'package:doc/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route getroute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (context) => const Onboarding(),
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
