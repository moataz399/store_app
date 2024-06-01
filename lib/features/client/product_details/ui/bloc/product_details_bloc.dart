import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/client/product_details/data/models/product_details_response.dart';

import 'package:store_app/features/client/product_details/data/repo/product_details_repo.dart';

part 'product_details_event.dart';

part 'product_details_state.dart';

part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc(this.repo) : super(const ProductDetailsState.loading()) {
    on<GetProductDetailsEvent>(_getProductDetails);
  }

  final ProductDetailsRepo repo;

  Future<void> _getProductDetails(
      GetProductDetailsEvent event, Emitter<ProductDetailsState> emit) async {
    emit(const ProductDetailsState.loading());
    final result = await repo.getProductDetails(id: event.productId);

    result.when(success: (response) {
      emit(ProductDetailsState.success(
        productDetailsModel: response.data.productModel,
      ));
    }, failure: (String error) {
      emit(ProductDetailsState.error(error: error));
    });
  }
}
