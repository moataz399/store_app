import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/products/data/repos/admin_products_repo.dart';

part 'delete_product_event.dart';
part 'delete_product_state.dart';
part 'delete_product_bloc.freezed.dart';

class DeleteProductBloc extends Bloc<DeleteProductEvent, DeleteProductState> {
  DeleteProductBloc(this._repo) : super(const _Initial()) {
    on<RemoveProductEvent>(_deleteProduct);
  }

  final AdminProductsRepo _repo;

  FutureOr<void> _deleteProduct(
      RemoveProductEvent event,
      Emitter<DeleteProductState> emit,
      ) async {
    emit(DeleteProductState.loading(productId: event.productId));

    final result = await _repo.deleteProducts(productId: event.productId);

    result.when(
      success: (_) {
        emit(const DeleteProductState.success());
      },
      failure: (error) {
        emit(DeleteProductState.error(error: error));
      },
    );
  }
}
