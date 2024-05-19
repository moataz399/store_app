import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/dashboard/data/repo/admin_product_repo.dart';

import '../../../dashboard/data/models/product_admin_model.dart';

part 'admin_products_state.dart';

part 'admin_products_cubit.freezed.dart';

class AdminProductsCubit extends Cubit<AdminProductsState> {
  AdminProductsCubit(this.adminProductRepo)
      : super(const AdminProductsState.loading());

  final AdminDashBoardRepo adminProductRepo;

  Future<void> getProductsNumber() async {
    emit(const AdminProductsState.loading());
    final result = await adminProductRepo.getProducts();
    result.when(
      success: (data) {
        print(data);
        emit(AdminProductsState.success(adminProductModel: data));
      },
      failure: (error) {
        print(error);
        emit(AdminProductsState.error(error: error));
      },
    );
  }
}
