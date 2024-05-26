part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.loading() = LoadingState;
  const factory ProductsState.success({
    required List<AdminProductsModel> productsList,
  }) = SuccessState;
  const factory ProductsState.empty() = EmptyState;
  const factory ProductsState.error({required String error}) = ErrorState;
}

