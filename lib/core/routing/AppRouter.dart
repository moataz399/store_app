import 'package:flutter/material.dart';
import 'package:store_app/core/routing/routes.dart';

import 'package:store_app/features/testScreen.dart';

import 'package:store_app/features/testScreen2.dart';

class AppRouter {
  AppRouter();

  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const TestScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const TestScreen2(),
        );

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('NO route defined to ${settings.name}'),
                  ),
                ));
    }
  }
}
