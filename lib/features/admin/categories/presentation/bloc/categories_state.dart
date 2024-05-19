part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = Loading;

  const factory CategoriesState.success(
      {required AdminCategoriesResponse data}) = Success;

  const factory CategoriesState.error({required String error}) = Error;

  const factory CategoriesState.addedSuccess(AddCategoryResponse data) =
      AddedSuccess;

  const factory CategoriesState.addedError({required String error}) =
      AddedError;

  const factory CategoriesState.deletedSuccess(DeleteCategoryResponse data) =
      DeletedSuccess;

  const factory CategoriesState.deletedError({required String error}) =
  DeletedError;

  const factory CategoriesState.editSuccess() = EditSuccess;

  const factory CategoriesState.editError({required String error}) = EditError;
}
