part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.registerInitial() = _RegisterInitial;
  const factory RegisterState.registerLoading() = _RegisterLoading;
  const factory RegisterState.registered() = _Registered;
  const factory RegisterState.registerError(String message) = _RegisterError;
}
