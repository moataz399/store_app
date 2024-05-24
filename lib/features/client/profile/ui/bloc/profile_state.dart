part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = Loading;

  const factory ProfileState.success({required UserRoleResponse userRoleResponse}) =Success;

  const factory ProfileState.error({required String error}) = Error;
}
