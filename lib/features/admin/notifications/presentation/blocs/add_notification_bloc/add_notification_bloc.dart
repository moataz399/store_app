import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/services/hive/hive_database.dart';
import 'package:store_app/features/admin/notifications/data/models/add_notification_model.dart';

part 'add_notification_event.dart';

part 'add_notification_state.dart';

part 'add_notification_bloc.freezed.dart';

class AddNotificationBloc
    extends Bloc<AddNotificationEvent, AddNotificationState> {
  AddNotificationBloc() : super(const AddNotificationState.initial()) {
    on<CreateNotification>(_createNotification);
  }

  Future<void> _createNotification(CreateNotification event, Emitter<AddNotificationState> emit) async {
    try {
      await HiveDatabase().notificationBox!.add(event.addNotificationModel);
      emit(const AddNotificationState.success());
    } catch (e) {
      emit(
        AddNotificationState.error(
          error: e.toString(),
        ),
      );
    }
  }
}
