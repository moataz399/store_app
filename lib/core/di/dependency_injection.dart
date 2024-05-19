import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/app/upload_image/upload_image_data_source.dart';
import 'package:store_app/core/app/upload_image/upload_image_repo.dart';
import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql/dio_factory.dart';
import 'package:store_app/features/admin/categories/data/repos/get_categories_repo.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/dashboard/data/data_source/admin_product_data_source.dart';
import 'package:store_app/features/admin/dashboard/data/repo/admin_product_repo.dart';
import 'package:store_app/features/admin/dashboard/presentation/cubits/categories_cubit/categories_number_cubit.dart';
import 'package:store_app/features/admin/dashboard/presentation/cubits/users_cubit/users_number_cubit.dart';
import 'package:store_app/features/admin/products/presentation/cubit/admin_products_cubit.dart';
import 'package:store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:store_app/features/auth/data/repos/auth_repo.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';

import '../../features/admin/categories/data/data_source/get_categories_data_source.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();

  getIt
    ..registerFactory<AppCubit>(AppCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)

    //Auth
    ..registerLazySingleton<AuthRepo>(() => AuthRepo(getIt<AuthDataSource>()))
    ..registerLazySingleton<AuthDataSource>(
        () => AuthDataSource(getIt<ApiService>()))
    ..registerFactory<AuthBloc>(() => AuthBloc(getIt<AuthRepo>()))

    //upload Image
    ..registerLazySingleton<UploadImageRepo>(
      () => UploadImageRepo(getIt<UploadImageDataSource>()),
    )
    ..registerLazySingleton<UploadImageDataSource>(
      () => UploadImageDataSource(getIt<ApiService>()),
    )
    ..registerFactory<UploadImageCubit>(
      () => UploadImageCubit(getIt<UploadImageRepo>()),
    )

    //admin
    ..registerLazySingleton<AdminDashBoardRepo>(
      () => AdminDashBoardRepo(getIt()),
    )
    ..registerLazySingleton<AdminProductDataSource>(
      () => AdminProductDataSource(getIt<ApiService>()),
    )
    ..registerFactory<AdminProductsCubit>(
      () => AdminProductsCubit(getIt<AdminDashBoardRepo>()),
    )
    ..registerFactory<UsersNumberCubit>(
      () => UsersNumberCubit(getIt<AdminDashBoardRepo>()),
    )
    ..registerFactory<CategoriesNumberCubit>(
      () => CategoriesNumberCubit(getIt<AdminDashBoardRepo>()),
    )

  ..registerLazySingleton<CategoriesRepo>(
        () => CategoriesRepo(getIt<GetCategoriesDataSource>()))
  ..registerLazySingleton<GetCategoriesDataSource>(
        () => GetCategoriesDataSource(getIt()))
  ..registerFactory<CategoriesBloc>(
        () => CategoriesBloc(getIt()));
}
