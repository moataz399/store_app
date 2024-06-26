import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/routing/routes.dart';
import 'package:store_app/features/admin/categories/presentation/screens/categories_screen.dart';
import 'package:store_app/features/admin/home_admin_screen.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:store_app/features/auth/presentation/screens/login_screen.dart';
import 'package:store_app/features/auth/presentation/screens/register_screen.dart';
import 'package:store_app/features/client/category/ui/screens/category_screen.dart';
import 'package:store_app/features/client/main/ui/screen/main_screen.dart';
import 'package:store_app/features/client/product_details/ui/screens/product_details_screen.dart';
import 'package:store_app/features/client/view_all_products/ui/bloc/view_all_products_bloc.dart';
import 'package:store_app/features/client/view_all_products/ui/screens/view_all_products_screen.dart';

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
      case Routes.productDetails:
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(
            productId: arguments! as int,
          ),
        );
      case Routes.categoryScreen:
        return MaterialPageRoute(
          builder: (_) => CategoryScreen(
            categoryInfo: arguments! as ({String categoryName, int categoryId}),
          ),
        );
      case Routes.productsViewAll:
        return MaterialPageRoute(
          builder: (_) => const ViewAllProductsScreen(),
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
