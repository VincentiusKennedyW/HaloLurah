part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class NotLoggedIn extends LoginState {}

class LoginLoading extends LoginState {}

class LoggedIn extends LoginState {
  final String role;

  const LoggedIn(this.role);

  @override
  List<Object?> get props => [role];
}

class LoginError extends LoginState {
  final String message;

  const LoginError(this.message);

  @override
  List<Object?> get props => [message];
}

class LoginRoleError extends LoginState {
  final String message;

  const LoginRoleError(this.message);

  @override
  List<Object?> get props => [message];
}
