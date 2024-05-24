import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/utils/enums.dart';
import 'package:store_app/features/client/favorities/ui/screens/fav_screen.dart';
import 'package:store_app/features/client/home/ui/screens/home_screen.dart';
import 'package:store_app/features/client/main/ui/cubit/main_cubit.dart';
import 'package:store_app/features/client/main/ui/widgets/main_app_bar.dart';
import 'package:store_app/features/client/main/ui/widgets/main_bottom_nav_bar.dart';
import 'package:store_app/features/client/notifications/ui/screens/notifications_screen.dart';
import 'package:store_app/features/client/profile/ui/screens/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainCubit>(),
      child: Scaffold(
        appBar: const MainCustomerAppBar(),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<MainCubit, MainState>(
                builder: (context, state) {
                  final cubit = context.read<MainCubit>();
                  if (cubit.navBarEnum == NavBarEnum.notifications) {
                    return const NotificationsScreen();
                  } else if (cubit.navBarEnum == NavBarEnum.favorites) {
                    return const FavScreen();
                  } else if (cubit.navBarEnum == NavBarEnum.profile) {
                    return const ProfileScreen();
                  }
                  return const HomeScreen();
                },
              ),
            ),
            const MainBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
