
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/features/client/home/ui/widgets/products/product_item.dart';
import 'package:store_app/features/client/view_all_products/ui/bloc/view_all_products_bloc.dart';

class ViewAllProductsBody extends StatefulWidget {
  const ViewAllProductsBody({super.key});

  @override
  State<ViewAllProductsBody> createState() => _ViewAllProductsBodyState();
}


class _ViewAllProductsBodyState extends State<ViewAllProductsBody> {
  late final ScrollController _scrollController;


  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        context.read<ViewAllProductsBloc>().handlePagination(
          scrollController: _scrollController,
          loadMorePosition: MediaQuery.of(context).size.height * 0.15,
        );
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: BlocBuilder<ViewAllProductsBloc, ViewAllProductsState>(
        builder: (context, state) {
          if (state is ViewAllProductsLoading &&
              state.productsList.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                color: context.color.textColor,
              ),
            );
          } else if (state is ViewAllProductsError) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    controller: _scrollController,
                    itemCount: state.productsList.length,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //Number of cloums
                      crossAxisSpacing: 8, // Spacing between colums
                      mainAxisSpacing: 15, //Spacing between rows
                      childAspectRatio: 165 / 250,
                    ),
                    itemBuilder: (context, index) {
                      return CustomProductItem(
                        price: state.productsList[index].price ?? 0,
                        categoryName:
                        state.productsList[index].category!.name ?? '',
                        title: state.productsList[index].title ?? '',
                        imageUrl: state.productsList[index].images!.first,
                        productId:
                        int.parse(state.productsList[index].id ?? '0'),
                      );
                    },
                  ),
                ),
                if (state is ViewAllProductsLoading &&
                    state.productsList.isNotEmpty)
                  CircularProgressIndicator(
                    color: context.color.textColor,
                  ),
              ],
            );
          }
        },
      ),
    );
  }
}
