import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/widgets/EmptyScreen.dart';
import 'package:store_app/features/client/home/ui/widgets/products/product_item.dart';
import 'package:store_app/features/client/search/ui/bloc/search_bloc.dart';
import 'package:store_app/features/client/search/ui/widgets/filtter_button.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: Column(
        children: [
          // filter buttons
          const FilterButtons(),

          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.when(

                initial: () {
                  return const SizedBox.shrink();
                },
                loading: () {
                  return Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: context.color.textColor,
                      ),
                    ),
                  );
                },
                success: (productList) {
                  return Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: productList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                    ),
                  );
                },
                empty: () {
                  return const EmptyScreen();
                },
                error: Text.new,
              );
            },
          ),
        ],
      ),
    );
  }
}