import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/auth/data/models/user_role_response.dart';
import 'package:store_app/features/client/profile/data/repos/profile_repo.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.profileRepo) : super(const ProfileState.loading()) {
    on<getUserProfileDataEvent>(_getUserProfileData);
  }

  final ProfileRepo profileRepo;

  Future<void> _getUserProfileData(
      getUserProfileDataEvent event, Emitter<ProfileState> emit) async {
    final response = await profileRepo.getUserProfileData();

    response.when(success: (data) {
      emit(ProfileState.success(userRoleResponse: data));
    }, failure: (error) {
      emit(ProfileState.error(error: error));
    });
  }
}
