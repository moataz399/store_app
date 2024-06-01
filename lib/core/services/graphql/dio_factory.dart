import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:store_app/core/services/shared_pref/pref_keys.dart';
import 'package:store_app/core/services/shared_pref/shared_pref.dart';
import 'package:store_app/core/utils/app_logout.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    const timeOut = Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers['Authorization'] =
            'Bearer ${SharedPref().getString(PrefKeys.accessToken)}';

      debugPrint(
        "[USER Token] ====> ${SharedPref().getString(PrefKeys.accessToken) ?? 'NULL TOKEN'}",
      );

      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        request: false,
        compact: false,
      ),
    );
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
              'Bearer ${SharedPref().getString(PrefKeys.accessToken)}';

          debugPrint(
            '[REQUEST] ${options.method} ${options.path} ${options.queryParameters} ${options.data}',
          );
          return handler.next(options);
        },
        onError: (e, handler) async {
          if (e.response?.statusCode == 401) {
            debugPrint(
              '[ERROR] ${e.message} ${e.response?.statusCode} ${e.response?.data}',
            );
            await AppLogout().logout();
          }
        },
      ),
    );
  }
}
