part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = LoadingState;
  const factory CategoryState.success({
    required List<AdminProductsModel> productsList,
  }) = SuccessState;
  const factory CategoryState.empty() = EmptyState;
  const factory CategoryState.error({required String error}) = ErrorState;
}