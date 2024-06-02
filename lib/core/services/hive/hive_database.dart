import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_app/features/admin/notifications/data/models/add_notification_model.dart';
import 'package:store_app/features/client/favorities/data/models/fav_model.dart';

class HiveDatabase {
  factory HiveDatabase() => _instance;

  HiveDatabase._();

  static final HiveDatabase _instance = HiveDatabase._();

  Box<AddNotificationModel>? notificationBox;
  Box<FavModel>? favBox;

  Future<void> setupHive() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(AddNotificationModelAdapter())
      ..registerAdapter(FavModelAdapter());
    notificationBox =
        await Hive.openBox<AddNotificationModel>('notification_box');

    favBox = await Hive.openBox<FavModel>('fav_box');
  }

  Future<void> clearAllBox() async {
    await notificationBox!.clear();
    await favBox!.clear();
  }
}
