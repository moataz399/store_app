part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.started() = _Started;
  const factory CategoriesEvent.getCategories() = GetCategoriesEvent;
  const factory CategoriesEvent.addCategory({required String imageUrl}) = AddCategoryEvent;
  const factory CategoriesEvent.deleteCategory({required String id }) = DeleteCategoryEvent;
  const factory CategoriesEvent.editCategory({required EditCategoryRequestBody body}) = EditCategoryEvent;

}
