part of 'admin_products_bloc.dart';

@freezed
class AdminProductsState with _$AdminProductsState {

  const factory AdminProductsState.loading() = Loading;

  const factory AdminProductsState.success({
    required List<ProductsModel> productList,
  }) = SuccessState;

  const factory AdminProductsState.empty() = EmptyState;

  const factory AdminProductsState.error({required String error}) = ErrorState;
}
