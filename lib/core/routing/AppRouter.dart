import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/routing/routes.dart';
import 'package:store_app/features/admin/home_admin_screen.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:store_app/features/auth/presentation/screens/login_screen.dart';
import 'package:store_app/features/auth/presentation/screens/register_screen.dart';
import 'package:store_app/features/client/main/ui/screen/main_screen.dart';

class AppRouter {
  AppRouter();

  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthBloc>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => getIt<AuthBloc>(),
            ),
            BlocProvider(create: (context) => getIt<UploadImageCubit>())
          ], child: const RegisterScreen()),
        );
      case Routes.homeAdminScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeAdminScreen(),
        );
      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('NO route defined to ${settings.name}'),
            ),
          ),
        );
    }
  }
}
