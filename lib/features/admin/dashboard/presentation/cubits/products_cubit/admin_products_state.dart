part of 'admin_products_cubit.dart';

@freezed
class AdminProductsState with _$AdminProductsState {

  const factory AdminProductsState.loading() = Loading;

  const factory AdminProductsState.error({required String error}) = ErrorState;

  const factory AdminProductsState.success(
      {required ProductsNumberResponse adminProductModel}) = Success;
}
