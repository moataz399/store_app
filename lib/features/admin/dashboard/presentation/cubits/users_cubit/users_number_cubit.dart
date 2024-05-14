import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_users_response.dart';
import 'package:store_app/features/admin/dashboard/data/repo/admin_product_repo.dart';

part 'users_number_state.dart';

part 'users_number_cubit.freezed.dart';

class UsersNumberCubit extends Cubit<UsersNumberState> {
  UsersNumberCubit(this.adminRepo) : super(const UsersNumberState.loading());

  final AdminDashBoardRepo adminRepo;

  Future<void> getUsersNumber() async {
    emit(const UsersNumberState.loading());
    final result = await adminRepo.getUsers();
    result.when(
      success: (data) {
        print(data);
        emit(UsersNumberState.success(response: data));
      },
      failure: (error) {
        print(error);
        emit(UsersNumberState.error(error: error));
      },
    );
  }
}
