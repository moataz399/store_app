import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/notifications/data/data_source/send_notification_data_source.dart';

class SendNotificationRepo {
  final SendNotificationDataSource sendNotificationDataSource;

  SendNotificationRepo(this.sendNotificationDataSource);

  Future<ApiResult<void>> sendNotification({
    required String title,
    required String body,
    required int productId,
  }) async {
    try {
      final response = await sendNotificationDataSource.sendNotification(
        title: title,
        body: body,
        productId: productId,
      );

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
