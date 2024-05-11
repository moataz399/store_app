import 'package:flutter/material.dart';
import 'package:store_app/core/routing/routes.dart';
import 'package:store_app/features/auth/presentation/screen/login_screen.dart';
import 'package:store_app/features/auth/presentation/screen/register_screen.dart';



class AppRouter {
  AppRouter();

  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

      default:
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                  body: Center(
                    child: Text('NO route defined to ${settings.name}'),
                  ),
                ));
    }
  }
}
