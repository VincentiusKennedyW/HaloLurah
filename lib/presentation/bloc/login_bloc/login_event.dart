part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class Login extends LoginEvent {
  final String email;
  final String password;

  const Login(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class LoggedOut extends LoginEvent {}

class IsLoggedIn extends LoginEvent {}
