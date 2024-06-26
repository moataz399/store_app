part of 'add_notification_bloc.dart';

@freezed
class AddNotificationEvent with _$AddNotificationEvent {
  const factory AddNotificationEvent.started() = _Started;

  const factory AddNotificationEvent.createNotification(
          {required AddNotificationModel addNotificationModel}) =
      CreateNotification;

  const factory AddNotificationEvent.deleteNotification(
          {required AddNotificationModel notificationModel}) =
  DeleteNotificationEvent;
}
