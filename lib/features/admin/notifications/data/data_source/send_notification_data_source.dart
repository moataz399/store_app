import 'package:store_app/core/services/push_notification/fcm.dart';

class SendNotificationDataSource {

  Future<void> sendNotification({
    required String title,
    required String body,
    required int productId,
  }) async {
    final response = await FirebaseCloudMessaging().sendTopicNotification(
        title: title, body: body,productId: productId);

    return response;
  }
}