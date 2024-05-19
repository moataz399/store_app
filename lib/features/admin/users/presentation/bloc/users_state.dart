part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.loading() = Loading;

  const factory UsersState.empty() = Empty;
  const factory UsersState.success({required List<UserModel> list}) = Success;
  const factory UsersState.error({required String error }) = Error;
  const factory UsersState.search({required List<UserModel> userList}) =
  SearchUserState;



}
