import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/home/data/repos/home_repo.dart';

part 'products_event.dart';

part 'products_state.dart';

part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(this._repo) : super(const ProductsState.loading()) {
    on<GetAllProductsEvent>(_getAllProducts);
  }

  final HomeRepo _repo;

  bool isProductListSmallerThan10 = false;

  FutureOr<void> _getAllProducts(
    GetAllProductsEvent event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const ProductsState.loading());

    final result = await _repo.getAllProducts();

    result.when(
      success: (data) {
        if (data.data.products.isEmpty) {
          emit(const ProductsState.empty());
        } else {
          isProductListSmallerThan10 = data.data.products.length >= 10;
          emit(
            ProductsState.success(productsList: data.data.products),
          );
        }
      },
      failure: (error) {
        emit(ProductsState.error(error: error));
      },
    );
  }
}
