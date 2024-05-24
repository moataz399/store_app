import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/services/hive/hive_database.dart';
import 'package:store_app/features/admin/notifications/data/models/add_notification_model.dart';

part 'get_all_notification_admin_event.dart';

part 'get_all_notification_admin_state.dart';

part 'get_all_notification_admin_bloc.freezed.dart';

class GetAllNotificationAdminBloc
    extends Bloc<GetAllNotificationAdminEvent, GetAllNotificationAdminState> {
  GetAllNotificationAdminBloc()
      : super(const GetAllNotificationAdminState.loading()) {
    on<GetAllNotificationEvent>(_getAllNotification);
  }

  Future<void> _getAllNotification(GetAllNotificationEvent event,
      Emitter<GetAllNotificationAdminState> emit) async {
    try {
      final list = HiveDatabase().notificationBox!.values.toList();

      if (list.isEmpty) {
        emit(const GetAllNotificationAdminState.empty());
      } else {
        emit(GetAllNotificationAdminState.success(list: list));
      }
    } catch (e) {
      emit(const GetAllNotificationAdminState.error(error: 'error'));
    }
  }


  }






