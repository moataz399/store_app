import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/MyBlocObserver.dart';
import 'package:store_app/core/routing/AppRouter.dart';
import 'package:store_app/core/services/hive/hive_database.dart';
import 'package:store_app/core/services/push_notification/fcm.dart';
import 'package:store_app/core/services/shared_pref/shared_pref.dart';
import 'package:store_app/firebase_options.dart';
import 'package:store_app/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseCloudMessaging().init();
  await SharedPref().instantiatePreferences();
  await setUpGetIt();
await HiveDatabase().setupHive();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(MyApp(appRouter: AppRouter()));
  });
}
