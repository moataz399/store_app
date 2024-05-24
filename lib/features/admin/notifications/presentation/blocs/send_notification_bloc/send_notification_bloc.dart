import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/notifications/data/repo/repo.dart';

part 'send_notification_event.dart';

part 'send_notification_state.dart';

part 'send_notification_bloc.freezed.dart';

class SendNotificationBloc
    extends Bloc<SendNotificationEvent, SendNotificationState> {
  SendNotificationBloc(this.sendNotificationRepo)
      : super(const SendNotificationState.initial()) {
    on<SendNotification>(_sendNotification);
  }

  final SendNotificationRepo sendNotificationRepo;

  Future<void> _sendNotification(
      SendNotification event, Emitter<SendNotificationState> emit) async {
    emit(SendNotificationState.loading(indexId: event.indexId));
    final result = await sendNotificationRepo.sendNotification(
      title: event.title,
      body: event.body,
      productId: event.productId,
    );
    result.when(success: (_) {
      emit(const SendNotificationState.success());
    }, failure: (error) {
      emit(SendNotificationState.error(error: error));
    });
  }
}
