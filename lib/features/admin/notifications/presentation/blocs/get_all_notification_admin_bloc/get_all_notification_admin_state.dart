part of 'get_all_notification_admin_bloc.dart';

@freezed
class GetAllNotificationAdminState with _$GetAllNotificationAdminState {
  const factory GetAllNotificationAdminState.loading() = Loading;
  const factory GetAllNotificationAdminState.success({required List<AddNotificationModel >list }) = Success;
  const factory GetAllNotificationAdminState.error({required String error}) = Error;
  const factory GetAllNotificationAdminState.empty() = Empty;
}
