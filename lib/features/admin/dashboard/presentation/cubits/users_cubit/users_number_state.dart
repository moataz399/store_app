part of 'users_number_cubit.dart';

@freezed
class UsersNumberState with _$UsersNumberState {
  const factory UsersNumberState.loading() = Loading;

  const factory UsersNumberState.error({required String error}) = ErrorState;

  const factory UsersNumberState.success(
      {required AdminUsersResponse response}) = Success;}
