import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/language/app_localizations_setup.dart';
import 'package:store_app/core/routing/AppRouter.dart';
import 'package:store_app/core/routing/routes.dart';
import 'package:store_app/core/services/shared_pref/pref_keys.dart';
import 'package:store_app/core/services/shared_pref/shared_pref.dart';
import 'package:store_app/core/style/theme/app_theme.dart';
import 'package:store_app/core/widgets/no_network_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({required this.appRouter, super.key});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => getIt<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              )
              ..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    theme: cubit.isDark ? themeDark() : themeLight(),
                    locale: Locale(cubit.currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                    navigatorKey: getIt<GlobalKey<NavigatorState>>(),
                    initialRoute: SharedPref()
                            .getString(
                              PrefKeys.accessToken,
                            ) != null?
                         SharedPref().getString(
                                  PrefKeys.userRole,
                                ) !=
                                'admin'
                            ? Routes.mainScreen
                            : Routes.homeAdminScreen
                        : Routes.loginScreen,
                    onGenerateRoute: appRouter.generateRoute,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            title: 'No Network',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
