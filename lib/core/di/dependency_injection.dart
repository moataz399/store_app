import 'package:get_it/get_it.dart';

import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql/dio_factory.dart';
import 'package:store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:store_app/features/auth/data/repos/auth_repo.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  final dio = await DioFactory.getDio();
  getIt..registerFactory<AppCubit>(AppCubit.new)
  ..registerLazySingleton<ApiService>(() => ApiService(dio))


  ..registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()))
  ..registerLazySingleton<AuthDataSource>(() => AuthDataSource(getIt()))

  ..registerFactory<AuthBloc>(() => AuthBloc(getIt()));


}
