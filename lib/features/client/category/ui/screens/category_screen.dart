import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/widgets/customer_app_bar.dart';
import 'package:store_app/features/client/category/ui/bloc/category_bloc.dart';
import 'package:store_app/features/client/category/ui/screens/category_body.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({required this.categoryInfo, super.key});

  final ({String categoryName, int categoryId}) categoryInfo;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryBloc>()
        ..add(
          CategoryEvent.getCategoryEvent(categoryId: categoryInfo.categoryId),
        ),
      child: Scaffold(
        appBar: CustomAppBar(title: categoryInfo.categoryName),
        body: const CategoryBody(),
      ),
    );
  }
}
