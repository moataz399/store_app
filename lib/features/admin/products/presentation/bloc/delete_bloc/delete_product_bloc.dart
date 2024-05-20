import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_product_event.dart';
part 'delete_product_state.dart';
part 'delete_product_bloc.freezed.dart';

class DeleteProductBloc extends Bloc<DeleteProductEvent, DeleteProductState> {
  DeleteProductBloc() : super(const DeleteProductState.initial()) {
    on<DeleteProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
