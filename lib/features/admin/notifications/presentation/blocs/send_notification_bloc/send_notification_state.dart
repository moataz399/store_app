part of 'send_notification_bloc.dart';

@freezed
class SendNotificationState with _$SendNotificationState {
  const factory SendNotificationState.initial() = _initial;


  const factory SendNotificationState.loading({required int indexId}) = Loading;

  const factory SendNotificationState.success() = Success;

  const factory SendNotificationState.error({required String error}) = Error;

}