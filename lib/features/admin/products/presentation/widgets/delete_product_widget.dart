
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/features/admin/products/presentation/bloc/admin_products_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/delete_bloc/delete_product_bloc.dart';

class DeleteProductWidget extends StatelessWidget {
  const DeleteProductWidget({
    required this.productId,
    super.key,
  });

  final String productId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: BlocConsumer<DeleteProductBloc, DeleteProductState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              context.read<AdminProductsBloc>().add(
                const AdminProductsEvent.getAllProducts(
                  isNotLoading: false,
                ),
              );
              ShowToast.showToastSuccessTop(
                message: 'Your product has been deleted',
                context: context
              );
            },
            error: (error) {
              ShowToast.showToastErrorTop(
                message: error,
                  context: context

              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: (id) {
              if (id == productId) {
                return SizedBox(
                  height: 15.h,
                  width: 15.w,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              }
              return const Icon(
                Icons.delete,
                color: Colors.red,
                size: 25,
              );
            },
            orElse: () {
              return InkWell(
                onTap: () {
                  context.read<DeleteProductBloc>().add(
                    DeleteProductEvent.deleteProduct(productId: productId),
                  );
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
