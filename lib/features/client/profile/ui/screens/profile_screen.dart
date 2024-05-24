import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/features/client/profile/ui/bloc/profile_bloc.dart';
import 'package:store_app/features/client/profile/ui/widgets/change_language_widget.dart';
import 'package:store_app/features/client/profile/ui/widgets/change_light_mode.dart';
import 'package:store_app/features/client/profile/ui/widgets/user_profile_info.dart';
import 'package:store_app/features/client/profile/ui/widgets/user_profile_shimmer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProfileBloc(getIt())..add(const ProfileEvent.getUserProfileData()),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.when(
                    loading: () {
                      return const UserProfileShimmer();
                    },
                    success: (data) {
                      return Center(
                        child: UserProfileInfo(
                          userRoleResponse: data,
                        ),
                      );
                    },
                    error: Text.new,
                  );
                },
              ),
              verticalSpace(30),
              const CustomFadeInRight(
                  duration: 400, child: ChangeLanguageWidget()),
              verticalSpace(20),
              const CustomFadeInRight(duration: 400, child: ChangeLightMode()),
            ],
          ),
        ),
      ),
    );
  }
}
