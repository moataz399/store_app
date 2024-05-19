import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/admin_category_item.dart';
import 'package:store_app/features/admin/products/presentation/cubit/admin_products_cubit.dart';

import '../../../../../core/widgets/AdminAppBar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: context.translate(LangKeys.products),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {},
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: verticalSpace(20),
                    ),
                    SliverToBoxAdapter(
                      child:
                          BlocBuilder<AdminProductsCubit, AdminProductsState>(
                        builder: (context, state) => state.maybeWhen(
                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          error: (error) {
                            return Column(
                              children: [
                                const Icon(
                                  Icons.error,
                                  size: 40,
                                ),
                                Text(
                                  error,
                                  style: const TextStyle(fontSize: 40),
                                ),
                              ],
                            );
                          },
                          orElse: () {
                            return const SizedBox();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
