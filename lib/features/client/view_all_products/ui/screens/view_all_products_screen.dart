import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/customer_app_bar.dart';
import 'package:store_app/features/client/view_all_products/ui/bloc/view_all_products_bloc.dart';
import 'package:store_app/features/client/view_all_products/ui/screens/view_all_products_body.dart';


class ViewAllProductsScreen extends StatelessWidget {
  const ViewAllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  getIt<ViewAllProductsBloc>()
        ..add(const GetViewAllProductsEvent()),
      child: Scaffold(
        appBar: CustomAppBar(title: context.translate(LangKeys.viewAll)),
        body: const ViewAllProductsBody(),
      ),
    );
  }
}
