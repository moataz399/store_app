import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/widgets/EmptyScreen.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/features/client/home/ui/blocs/categories_bloc.dart';
import 'package:store_app/features/client/home/ui/widgets/categories/categories_list.dart';
import 'package:store_app/features/client/home/ui/widgets/categories/categories_shimmer.dart';
import 'package:store_app/features/client/home/ui/widgets/products/product_list.dart';

import '../../../../../core/language/lang_keys.dart';
import '../blocs/products_bloc/products_bloc.dart';
import '../widgets/products/product_shimmer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<CategoriesBloc>()
            .add(const CategoriesEvent.getAllCategories());
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const CategoriesShimmer();
                  },
                  success: (categoreisList) {
                    return CategoriesList(
                      list: categoreisList,
                    );
                  },
                  empty: () {
                    return const EmptyScreen();
                  },
                  error: Text.new,
                );
              },
            ),
          ),

          //Products
          SliverToBoxAdapter(
            child: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const ProductShimmer();
                  },
                  success: (productList) {
                    return ProductsList(
                      productList: productList,
                    );
                  },
                  empty: () {
                    return const SizedBox.shrink();
                  },
                  error: Text.new,
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),

          SliverToBoxAdapter(
            child: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) {
                if (context.read<ProductsBloc>().isProductListSmallerThan10) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: CustomButton(
                      height: 50.h,
                      lastRadius: 10,
                      threeRadius: 10,
                      width: MediaQuery.of(context).size.width,
                      backgroundColor: context.color.bluePinkLight,
                      textColor: Colors.black,
                      text: context.translate(LangKeys.viewAll),
                      onPressed: () {
                        //context.pushName(AppRoutes.productsViewAll);
                      },
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
