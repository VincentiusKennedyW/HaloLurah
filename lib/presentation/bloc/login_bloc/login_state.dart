part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginInitial() = _LoginInitial;
  const factory LoginState.notLoggedIn() = _NotLoggedIn;
  const factory LoginState.loginLoading() = _LoginLoading;
  const factory LoginState.loggedIn() = _LoggedIn;
  const factory LoginState.loginError(String message) = _LoginError;
  const factory LoginState.loginRoleError(String message) = _LoginRoleError;
}
