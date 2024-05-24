import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/products/data/models/create_product_request_body.dart';
import 'package:store_app/features/admin/products/data/repos/admin_products_repo.dart';

part 'create_peoduct_event.dart';

part 'create_peoduct_state.dart';

part 'create_peoduct_bloc.freezed.dart';

class CreateProductBloc extends Bloc<CreateProductEvent, CreateProductState> {
  CreateProductBloc(this.repo) : super(const _Initial()) {
    on<NewCreateProductEvent>(createProduct);
  }

  final AdminProductsRepo repo;

  FutureOr<void> createProduct(
    NewCreateProductEvent event,
    Emitter<CreateProductState> emit,
  ) async {
    emit(const CreateProductState.loading());

    final result = await repo.createProductsAdmin(body: event.body);

    result.when(
      success: (_) {
        emit(const CreateProductState.success());
      },
      failure: (error) {
        emit(CreateProductState.error(error: error));
      },
    );
  }
}
