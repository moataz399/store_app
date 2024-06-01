import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/category/data/repo/category_repo.dart';

part 'category_event.dart';

part 'category_state.dart';

part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this._repo) : super(const CategoryState.loading()) {
    on<GetCategoreyEvent>(_getCategory);
  }

  final CategoryRepo _repo;

  FutureOr<void> _getCategory(GetCategoreyEvent event,
      Emitter<CategoryState> emit,) async {
    emit(const CategoryState.loading());

    final result = await _repo.getProductsByCategory(
        categoryId: event.categoryId);

    result.when(
      success: (data) {
        if (data.data.products.isEmpty) {
          emit(const CategoryState.empty());
        } else {
          emit(
            CategoryState.success(
              productsList: data.data.products,
            ),
          );
        }
      },
      failure: (error) {
        emit(CategoryState.error(error: error));
      },
    );
  }
}
