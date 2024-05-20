part of 'admin_products_bloc.dart';

@freezed
class AdminProductsEvent with _$AdminProductsEvent {
  const factory AdminProductsEvent.started() = _Started;

  const factory AdminProductsEvent.getAllProducts(
      {required bool isNotLoading,}) = GetAllProducts;
}
