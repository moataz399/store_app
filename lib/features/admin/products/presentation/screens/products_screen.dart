import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/admin_products_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/create_product_bloc/create_peoduct_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/delete_bloc/delete_product_bloc.dart';
import 'package:store_app/features/admin/products/presentation/screens/products_body.dart';
import 'package:store_app/features/admin/products/presentation/widgets/create_product_bottom_sheet.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DeleteProductBloc>()),
        BlocProvider(
          create: (context) => getIt<AdminProductsBloc>()
            ..add(
              const AdminProductsEvent.getAllProducts(isNotLoading: false),
            ),

        ),
      ],
      child: Scaffold(
        floatingActionButton: FloatingActionButton(

          onPressed: () {
            CustomBottomSheet.showBottomSheet(
              context: context,
              widget: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => getIt<CreateProductBloc>(),
                  ),
                  BlocProvider(
                    create: (context) => getIt<UploadImageCubit>(),
                  ),
                  BlocProvider(
                    create: (context) => getIt<CategoriesBloc>()
                      ..add(
                        const CategoriesEvent.getCategories(),
                      ),
                  ),
                ],
                child: const CreateProductBottomSheet(),
              ),
              whenComplete: () {
                context.read<AdminProductsBloc>().add(
                      const AdminProductsEvent.getAllProducts(
                        isNotLoading: false,
                      ),
                    );
              },
            );
          },
          backgroundColor: context.color.navBarbg,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
          title: context.translate(LangKeys.products),
        ),
        body: const ProductsBody(),
      ),
    );
  }
}
