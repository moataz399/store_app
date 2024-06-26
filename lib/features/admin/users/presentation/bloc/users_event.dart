part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.started() = _Started;
  const factory UsersEvent.getAllUsers({required bool isLoading }) = GetAllUsersEvent;

  const factory UsersEvent.searchForUser({required String? searchName}) = SearchForUserEvent;
}
