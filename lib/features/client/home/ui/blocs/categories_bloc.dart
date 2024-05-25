import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/client/home/data/repos/home_repo.dart';


part 'categories_event.dart';

part 'categories_state.dart';

part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(this.homeRepo) : super(const CategoriesState.loading()) {
    on<GetAllCategoriesEvent>(_getAllCategories);
  }

  final HomeRepo homeRepo;

  Future<void> _getAllCategories(
      GetAllCategoriesEvent event, Emitter<CategoriesState> emit) async {
    final result = await homeRepo.getCategories();
    result.when(success: (data) {
      final list = data.data.categories;
      emit(CategoriesState.success(data: list));
    }, failure: (error) {
      emit(CategoriesState.error(error: error));
    });
  }
}
