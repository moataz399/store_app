part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = Loading;
  const factory CategoriesState.empty() = Empty;
  const factory CategoriesState.success({required  List<AdminCategoriesModel> data }) = Success;
  const factory CategoriesState.error({required String error}) = Error;
}
