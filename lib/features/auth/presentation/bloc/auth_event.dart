
part of 'auth_bloc.dart';


@freezed
class AuthEvent with _$AuthEvent {

  const factory AuthEvent.started() = _statrted;

  const factory AuthEvent.login() = LoginEvent;
   factory AuthEvent.register({required String imageUrl}) = RegisterEvent;


}