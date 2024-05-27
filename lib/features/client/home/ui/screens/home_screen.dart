import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/features/client/home/ui/blocs/categories_bloc.dart';
import 'package:store_app/features/client/home/ui/screens/home_body.dart';

import '../blocs/products_bloc/products_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CategoriesBloc>()
            ..add(
              const CategoriesEvent.getAllCategories(),
            ),

        ),BlocProvider(
          create: (context) => getIt<ProductsBloc>()
            ..add(
              const ProductsEvent.getAllProducts(),
            ),

        ),
      ],
      child: const HomeBody(),
    );
  }
}
