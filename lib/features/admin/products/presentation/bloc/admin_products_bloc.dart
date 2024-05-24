import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/admin/products/data/repos/admin_products_repo.dart';

part 'admin_products_event.dart';

part 'admin_products_state.dart';

part 'admin_products_bloc.freezed.dart';

class AdminProductsBloc extends Bloc<AdminProductsEvent, AdminProductsState> {
  AdminProductsBloc(this.repo) : super(const AdminProductsState.loading()) {
    on<GetAllProducts>(getAllProducts);
  }

  final AdminProductsRepo repo;

  FutureOr<void> getAllProducts(GetAllProducts event, Emitter<AdminProductsState> emit,) async {
    if (event.isNotLoading) {
      emit(const AdminProductsState.loading());
    }

    final result = await repo.getAllProducts();

    result.when(
      success: (data) {
        if (data.data.products.isEmpty) {
          emit(const AdminProductsState.empty());
        } else {
          emit(
            AdminProductsState.success(
              productList: data.data.products,
            ),
          );
        }
      },
      failure: (error) {
        emit(AdminProductsState.error(error: error));
      },
    );
  }
}
