part of 'delete_user_bloc.dart';

@freezed
class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState.initial() = _Initial;
  const factory DeleteUserState.deleteLoading({required String userId}) = DeleteLoading;
  const factory DeleteUserState.deletedSuccess() = DeletedSucces;
  const factory DeleteUserState.deletedError({required String error }) = DeletedError;
}
