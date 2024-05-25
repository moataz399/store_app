import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/categories/data/models/add_category_request_body.dart';
import 'package:store_app/features/admin/categories/data/models/add_category_response.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/admin/categories/data/models/delete_category_response.dart';
import 'package:store_app/features/admin/categories/data/models/edit_category_request_body.dart';
import 'package:store_app/features/admin/categories/data/repos/get_categories_repo.dart';

part 'categories_event.dart';

part 'categories_state.dart';

part 'categories_bloc.freezed.dart';

class AdminCategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  AdminCategoriesBloc(this.getCategoriesRepo)
      : super(const CategoriesState.loading()) {
    on<GetCategoriesEvent>(getCategories);
    on<AddCategoryEvent>(addCategory);
    on<DeleteCategoryEvent>(deleteCategory);
    on<EditCategoryEvent>(editCategory);
  }

  TextEditingController nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final CategoriesRepo getCategoriesRepo;

  FutureOr<void> getCategories(
      GetCategoriesEvent event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loading());
    final result = await getCategoriesRepo.getCategories();
    result.when(
      success: (data) {
        emit(CategoriesState.success(data: data));
      },
      failure: (error) {
        emit(CategoriesState.error(error: error));
      },
    );
  }

  FutureOr<void> addCategory(
      AddCategoryEvent event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loading());
    final result = await getCategoriesRepo.createCategory(
        body:
            AddCategoryRequestBody(nameController.text.trim(), event.imageUrl));
    result.when(
      success: (data) {
        emit(CategoriesState.addedSuccess(data));
        add(const CategoriesEvent.getCategories());
      },
      failure: (error) {
        emit(CategoriesState.addedError(error: error));
      },
    );
  }

  FutureOr<void> deleteCategory(
      DeleteCategoryEvent event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loading());

    final id = int.parse(event.id);
    final result = await getCategoriesRepo.deleteCategory(id: id);
    result.when(
      success: (data) {
        print(data.data.deleteCategory);
        emit(CategoriesState.deletedSuccess(data));
        add(const CategoriesEvent.getCategories());
      },
      failure: (error) {
        emit(CategoriesState.addedError(error: error));
      },
    );
  }

  FutureOr<void> editCategory(
      EditCategoryEvent event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loading());

    final result = await getCategoriesRepo.editCategory(body: event.body);
    result.when(
      success: (_) {
        emit(const CategoriesState.editSuccess());
        add(const CategoriesEvent.getCategories());
      },
      failure: (error) {
        emit(CategoriesState.editError(error: error));
      },
    );
  }
}
