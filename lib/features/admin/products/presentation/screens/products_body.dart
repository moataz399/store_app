import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/widgets/EmptyScreen.dart';
import 'package:store_app/core/widgets/loading_shimmer.dart';
import 'package:store_app/features/admin/products/presentation/bloc/admin_products_bloc.dart';
import 'package:store_app/features/admin/products/presentation/widgets/product_admin_item.dart';

class ProductsBody extends StatelessWidget {
  const ProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [

          //Get ALl Product
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<AdminProductsBloc>().add(
                      const AdminProductsEvent.getAllProducts(
                        isNotLoading: true,
                      ),
                    );
              },
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  ),
                  SliverToBoxAdapter(
                    child: BlocBuilder<AdminProductsBloc, AdminProductsState>(
                      builder: (context, state) {
                        return state.when(
                          loading: () {
                            return GridView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, //Number of cloums
                                crossAxisSpacing: 8, // Spacing between colums
                                mainAxisSpacing: 15, //Spacing between rows
                                childAspectRatio: 165 / 250,
                              ),
                              itemBuilder: (context, index) {
                                return LoadingShimmer(
                                  height: 220.h,
                                  width: 165.w,
                                );
                              },
                            );
                          },
                          success: (list) {
                            return GridView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: list.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, //Number of cloums
                                crossAxisSpacing: 8, // Spacing between colums
                                mainAxisSpacing: 15, //Spacing between rows
                                childAspectRatio: 165 / 250,
                              ),
                              itemBuilder: (context, index) {
                                return ProductAdminItem(
                                  imageUrl: list[index].images!.first,
                                  productId: list[index].id ?? '',
                                  price: list[index].price.toString(),
                                  title: list[index].title ?? '',
                                  imageList: list[index].images ?? [],
                                  description: list[index].description ?? '',
                                  categoryName:list[index].category?.name ?? '',
                                  categoryId: list[index].category?.id ?? '',
                                );
                              },
                            );
                          },
                          empty: EmptyScreen.new,
                          error: Text.new,
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
