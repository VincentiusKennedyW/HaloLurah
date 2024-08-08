// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({
    required String username,
    required String email,
    required String password,
    required String role,
  }) = _Register;
}
