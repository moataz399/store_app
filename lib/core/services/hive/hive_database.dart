import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_app/features/admin/notifications/data/models/add_notification_model.dart';

class HiveDatabase {
  factory HiveDatabase() => _instance;

  HiveDatabase._();

  static final HiveDatabase _instance = HiveDatabase._();

  Box<AddNotificationModel>? notificationBox;

  Future<void> setupHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AddNotificationModelAdapter());
    notificationBox =
        await Hive.openBox<AddNotificationModel>('notification_box');
  }

  Future<void> clearAllBox() async {
    await notificationBox!.clear();
  }
}
