// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pengaduan_warga/data/auth_service.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthService _authService;

  LoginBloc(this._authService) : super(const _NotLoggedIn()) {
    on<_Login>((event, emit) async {
      if (state is _NotLoggedIn) {
        emit(const LoginState.loginLoading());
        try {
          UserCredential userCredential = await _authService.signInUser(
            event.email,
            event.password,
          );
          String uid = userCredential.user?.uid ?? '';
          String role = await _authService.getUserRole(uid);
          if (role == 'user') {
            emit(const LoginState.loggedIn());
          } else {
            emit(const LoginState.loginRoleError(
                'Akses Ditolak: Role admin tidak diizinkan.'));
            await _authService.signOutUser();
            emit(const LoginState.notLoggedIn());
          }
        } catch (error) {
          emit(LoginState.loginError(error.toString()));
          emit(const LoginState.notLoggedIn());
        }
      }
    });

    on<_LoggedOut>((event, emit) async {
      if (state is _LoggedIn) {
        await _authService.signOutUser();
        emit(const LoginState.notLoggedIn());
      }
    });

    on<_IsLoggedIn>((event, emit) async {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String uid = user.uid;
        String role = await _authService.getUserRole(uid);
        if (role == 'user') {
          emit(const LoginState.loggedIn());
        } else {
          emit(const LoginState.notLoggedIn());
        }
      } else {
        emit(const LoginState.notLoggedIn());
      }
    });
  }
}
