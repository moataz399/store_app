part of 'create_peoduct_bloc.dart';

@freezed
class CreateProductEvent with _$CreateProductEvent {
  const factory CreateProductEvent.started() = _Started;
  const factory CreateProductEvent.createProduct(
      {required CreateProductRequestBody body}) = NewCreateProductEvent;
}
