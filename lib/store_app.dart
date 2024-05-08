import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/widgets/no_network_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isConnected,
        builder: (_, value, __) {
          if (value) {
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: MaterialApp(
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                builder: (context, widget) {
                  return Scaffold(
                    body: Builder(builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    }),
                  );
                },
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text("Store App"),
                  ),
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
        });
  }
}
