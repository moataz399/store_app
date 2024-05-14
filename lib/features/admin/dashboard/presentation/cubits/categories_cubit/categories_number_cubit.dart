import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_categories_model.dart';
import 'package:store_app/features/admin/dashboard/data/repo/admin_product_repo.dart';

part 'categories_number_state.dart';
part 'categories_number_cubit.freezed.dart';

class CategoriesNumberCubit extends Cubit<CategoriesNumberState> {
  CategoriesNumberCubit(this.adminRepo) : super(const CategoriesNumberState.loading());




  final AdminDashBoardRepo adminRepo;

  Future<void> getCategories() async {
    emit(const CategoriesNumberState.loading());
    final result = await adminRepo.getCategoriesNumber();
    result.when(
      success: (data) {
        print(data);
        emit(CategoriesNumberState.success(response: data));
      },
      failure: (error) {
        print(error);
        emit(CategoriesNumberState.error(error: error));
      },
    );
  }
}
