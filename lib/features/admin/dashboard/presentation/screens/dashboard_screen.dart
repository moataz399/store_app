import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';
import 'package:store_app/features/admin/dashboard/presentation/cubits/categories_cubit/categories_number_cubit.dart';
import 'package:store_app/features/admin/dashboard/presentation/cubits/users_cubit/users_number_cubit.dart';
import 'package:store_app/features/admin/dashboard/presentation/widgets/admin_container.dart';
import 'package:store_app/features/admin/products/presentation/cubit/admin_products_cubit.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AdminProductsCubit>()..getProductsNumber(),
        ),
        BlocProvider(
          create: (context) => getIt<CategoriesNumberCubit>()..getCategories(),
        ),
        BlocProvider(
            create: (context) => getIt<UsersNumberCubit>()..getUsersNumber()),
      ],
      child: Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
          title: context.translate(LangKeys.dashboard),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Column(
              children: [
                BlocBuilder<AdminProductsCubit, AdminProductsState>(
                  builder: (context, state) {
                    return state.when(
                      error: (error) {
                        return const Text(
                          'sorry something went wrong try to refresh the page ',
                        );
                      },
                      success: (data) {
                        return DashBoardContainer(
                          title: context.translate(LangKeys.products),
                          number: data.productsNumber,
                          image: 'assets/images/admin/products_drawer.png',
                          isLoading: false,
                        );
                      },
                      loading: () {
                        return DashBoardContainer(
                          title: context.translate(LangKeys.products),
                          number: '0',
                          image: 'assets/images/admin/products_drawer.png',
                          isLoading: true,
                        );
                      },
                    );
                  },
                ),
                verticalSpace(20),
                BlocBuilder<CategoriesNumberCubit, CategoriesNumberState>(
                  builder: (context, state) {
                    return state.when(
                      error: (error) {
                        return const Text(
                          'sorry something went wrong try to refresh the page ',
                        );
                      },
                      success: (data) {
                        return DashBoardContainer(
                          title: context.translate(LangKeys.categories),
                          number: data.categoriesNumber,
                          image: 'assets/images/admin/categories_drawer.png',
                          isLoading: false,
                        );
                      },
                      loading: () {
                        return DashBoardContainer(
                          title: context.translate(LangKeys.categories),
                          number: '0',
                          image: 'assets/images/admin/categories_drawer.png',
                          isLoading: true,
                        );
                      },
                    );
                  },
                ),
                verticalSpace(20),
                BlocBuilder<UsersNumberCubit, UsersNumberState>(
                  builder: (context, state) {
                    return state.when(
                      error: (error) {
                        return const Text(
                          'sorry something went wrong try to refresh the page ',
                        );
                      },
                      success: (data) {
                        return DashBoardContainer(
                          title: context.translate(LangKeys.users),
                          number: data.usersNumber,
                          image: 'assets/images/admin/users_drawer.png',
                          isLoading: false,
                        );
                      },
                      loading: () {
                        return DashBoardContainer(
                          title: context.translate(LangKeys.users),
                          number: '0',
                          image: 'assets/images/admin/users_drawer.png',
                          isLoading: true,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
