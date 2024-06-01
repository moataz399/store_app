import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/app/upload_image/upload_image_data_source.dart';
import 'package:store_app/core/app/upload_image/upload_image_repo.dart';
import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql/dio_factory.dart';
import 'package:store_app/features/admin/categories/data/data_source/get_categories_data_source.dart';
import 'package:store_app/features/admin/categories/data/repos/get_categories_repo.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/dashboard/data/data_source/admin_product_data_source.dart';
import 'package:store_app/features/admin/dashboard/data/repo/admin_product_repo.dart';
import 'package:store_app/features/admin/dashboard/presentation/cubits/categories_cubit/categories_number_cubit.dart';
import 'package:store_app/features/admin/dashboard/presentation/cubits/products_cubit/admin_products_cubit.dart';
import 'package:store_app/features/admin/dashboard/presentation/cubits/users_cubit/users_number_cubit.dart';
import 'package:store_app/features/admin/notifications/data/data_source/send_notification_data_source.dart';
import 'package:store_app/features/admin/notifications/data/repo/repo.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/add_notification_bloc/add_notification_bloc.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/get_all_notification_admin_bloc/get_all_notification_admin_bloc.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/send_notification_bloc/send_notification_bloc.dart';
import 'package:store_app/features/admin/products/data/data_source/products_data_source.dart';
import 'package:store_app/features/admin/products/data/repos/admin_products_repo.dart';
import 'package:store_app/features/admin/products/presentation/bloc/admin_products_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/create_product_bloc/create_peoduct_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/delete_bloc/delete_product_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/update_bloc/update_product_bloc.dart';
import 'package:store_app/features/admin/users/data/data_source/users_data_source.dart';
import 'package:store_app/features/admin/users/data/repos/users_repo.dart';
import 'package:store_app/features/admin/users/presentation/bloc/delete_bloc/delete_user_bloc.dart';
import 'package:store_app/features/admin/users/presentation/bloc/users_bloc.dart';
import 'package:store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:store_app/features/auth/data/repos/auth_repo.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:store_app/features/client/category/data/data_source/category_data_source.dart';
import 'package:store_app/features/client/category/data/repo/category_repo.dart';
import 'package:store_app/features/client/category/ui/bloc/category_bloc.dart';
import 'package:store_app/features/client/home/data/data_source/home_data_source.dart';
import 'package:store_app/features/client/home/data/repos/home_repo.dart';
import 'package:store_app/features/client/home/ui/blocs/categories_bloc.dart';
import 'package:store_app/features/client/home/ui/blocs/products_bloc/products_bloc.dart';
import 'package:store_app/features/client/main/ui/cubit/main_cubit.dart';
import 'package:store_app/features/client/product_details/data/data_source/product_details_data_source.dart';
import 'package:store_app/features/client/product_details/data/repo/product_details_repo.dart';
import 'package:store_app/features/client/product_details/ui/bloc/product_details_bloc.dart';
import 'package:store_app/features/client/profile/data/data_source/profile_data_source.dart';
import 'package:store_app/features/client/profile/data/repos/profile_repo.dart';
import 'package:store_app/features/client/profile/ui/bloc/profile_bloc.dart';
import 'package:store_app/features/client/view_all_products/data/data_source/view_all_data_source.dart';
import 'package:store_app/features/client/view_all_products/data/repo/view_all_products_repo.dart';
import 'package:store_app/features/client/view_all_products/ui/bloc/view_all_products_bloc.dart';

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
      () => AuthDataSource(getIt<ApiService>()),
    )
    ..registerFactory<AuthBloc>(() => AuthBloc(getIt<AuthRepo>()))

    //view all products
    ..registerLazySingleton<ViewAllProductsRepo>(
        () => ViewAllProductsRepo(getIt()))
    ..registerLazySingleton<ViewAllProductsDataSource>(
      () => ViewAllProductsDataSource(getIt<ApiService>()),
    )
    ..registerFactory<ViewAllProductsBloc>(() => ViewAllProductsBloc(getIt()))

    //category

    ..registerLazySingleton<CategoryRepo>(() => CategoryRepo(getIt()))
    ..registerLazySingleton<CategoryDataSource>(
      () => CategoryDataSource(getIt<ApiService>()),
    )
    ..registerFactory<CategoryBloc>(() => CategoryBloc(getIt<CategoryRepo>()))

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
    ..registerFactory<ProductsNumberCubit>(
      () => ProductsNumberCubit(getIt<AdminDashBoardRepo>()),
    )
    ..registerFactory<UsersNumberCubit>(
      () => UsersNumberCubit(getIt<AdminDashBoardRepo>()),
    )
    ..registerFactory<CategoriesNumberCubit>(
      () => CategoriesNumberCubit(getIt<AdminDashBoardRepo>()),
    )
    //categories
    ..registerLazySingleton<CategoriesRepo>(
      () => CategoriesRepo(getIt<GetCategoriesDataSource>()),
    )
    ..registerLazySingleton<GetCategoriesDataSource>(
      () => GetCategoriesDataSource(getIt()),
    )
    ..registerFactory<AdminCategoriesBloc>(() => AdminCategoriesBloc(getIt()))

    //products
    ..registerLazySingleton<AdminProductsDataSource>(
      () => AdminProductsDataSource(getIt()),
    )
    ..registerLazySingleton<AdminProductsRepo>(
      () => AdminProductsRepo(getIt<AdminProductsDataSource>()),
    )
    ..registerFactory<AdminProductsBloc>(
      () => AdminProductsBloc(getIt<AdminProductsRepo>()),
    )
    ..registerFactory<CreateProductBloc>(
      () => CreateProductBloc(getIt<AdminProductsRepo>()),
    )
    //users
    ..registerLazySingleton<UsersRepo>(
      () => UsersRepo(getIt<UsersDataSource>()),
    )
    ..registerLazySingleton<UsersDataSource>(() => UsersDataSource(getIt()))
    ..registerLazySingleton<SendNotificationDataSource>(
      SendNotificationDataSource.new,
    )
    ..registerLazySingleton<SendNotificationRepo>(
      () => SendNotificationRepo(getIt()),
    )
    ..registerFactory<DeleteUserBloc>(() => DeleteUserBloc(getIt()))
    ..registerFactory<UsersBloc>(() => UsersBloc(getIt()))
    ..registerFactory<DeleteProductBloc>(() => DeleteProductBloc(getIt()))
    ..registerFactory<UpdateProductBloc>(() => UpdateProductBloc(getIt()))

    //notifications
    ..registerFactory<AddNotificationBloc>(AddNotificationBloc.new)
    ..registerFactory<SendNotificationBloc>(() => SendNotificationBloc(getIt()))
    ..registerFactory<GetAllNotificationAdminBloc>(
      GetAllNotificationAdminBloc.new,
    )
    ..registerFactory<ProductDetailsBloc>(() => ProductDetailsBloc(getIt()))
    ..registerLazySingleton<ProductDetailsRepo>(
        () => ProductDetailsRepo(getIt()))
    ..registerLazySingleton<ProductDetailsDataSource>(
        () => ProductDetailsDataSource(getIt<ApiService>()))

    //profile

    ..registerLazySingleton<ProfileRepo>(
        () => ProfileRepo(getIt<ProfileDataSource>()))
    ..registerLazySingleton<ProfileDataSource>(
      () => ProfileDataSource(getIt<ApiService>()),
    )
    ..registerFactory<ProfileBloc>(() => ProfileBloc(getIt<ProfileRepo>()))
    //customer
    ..registerFactory<MainCubit>(MainCubit.new)
    //categories
    ..registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()))
    ..registerLazySingleton<HomeDataSource>(
      () => HomeDataSource(getIt<ApiService>()),
    )
    ..registerFactory<CategoriesBloc>(() => CategoriesBloc(getIt()))
    ..registerFactory<ProductsBloc>(() => ProductsBloc(getIt()));
}
