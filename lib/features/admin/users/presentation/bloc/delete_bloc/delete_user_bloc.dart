import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/users/data/repos/users_repo.dart';

part 'delete_user_event.dart';
part 'delete_user_state.dart';
part 'delete_user_bloc.freezed.dart';

class DeleteUserBloc extends Bloc<DeleteUserEvent, DeleteUserState> {
  DeleteUserBloc(this.usersRepo) : super(const DeleteUserState.initial()) {
    on<DeleteUser>(deleteUser);
  }


  final UsersRepo usersRepo ;

  Future<void> deleteUser(
      DeleteUser event,
      Emitter<DeleteUserState> emit,
      ) async {
    emit(DeleteUserState.deleteLoading(userId: event.userId));
    final result = await usersRepo.deleteUser(id: event.userId);
    result.when(
      success: (_) {
        emit(const DeleteUserState.deletedSuccess());
      },
      failure: (error) {
        emit(DeleteUserState.deletedError(error: error));
      },
    );
  }

}
