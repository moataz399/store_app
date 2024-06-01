import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/widgets/EmptyScreen.dart';
import 'package:store_app/core/widgets/loading_shimmer.dart';
import 'package:store_app/features/client/category/ui/bloc/category_bloc.dart';
import 'package:store_app/features/client/home/ui/widgets/products/product_item.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //Number of cloums
                  crossAxisSpacing: 8, // Spacing between colums
                  mainAxisSpacing: 15, //Spacing between rows
                  childAspectRatio: 165 / 250,
                ),
                itemBuilder: (context, index) {
                  return LoadingShimmer(
                    height: 250.h,
                    width: 165.w,
                  );
                },
              );
            },
            success: (productList) {
              return GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //Number of cloums
                  crossAxisSpacing: 8, // Spacing between colums
                  mainAxisSpacing: 15, //Spacing between rows
                  childAspectRatio: 165 / 250,
                ),
                itemBuilder: (context, index) {
                  return CustomProductItem(
                    price: productList[index].price ?? 0,
                    categoryName: productList[index].category!.name ?? '',
                    title: productList[index].title ?? '',
                    imageUrl: productList[index].images!.first,
                    productId: int.parse(productList[index].id ?? '0'),
                  );
                },
              );
            },
            empty: () {
              return const EmptyScreen();
            },
            error: Text.new,
          );
        },
      ),
    );
  }
}
