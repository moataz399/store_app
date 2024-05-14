part of 'categories_number_cubit.dart';

@freezed
class CategoriesNumberState with _$CategoriesNumberState {
  const factory CategoriesNumberState.loading() = Loading;

  const factory CategoriesNumberState.error({required String error}) = ErrorState;

  const factory CategoriesNumberState.success(
      {required AdminCategoriesResponse response}) = Success;
}
