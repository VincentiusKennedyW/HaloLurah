import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pengaduan_warga/data/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthService _authService;

  LoginBloc(this._authService) : super(NotLoggedIn()) {
    on<Login>((event, emit) async {
      if (state is NotLoggedIn) {
        emit(LoginLoading());
        try {
          UserCredential userCredential = await _authService.signInUser(
            event.email,
            event.password,
          );
          String uid = userCredential.user?.uid ?? '';
          String role = await _authService.getUserRole(uid);

          if (role == 'user') {
            emit(LoggedIn(role));
          } else {
            emit(const LoginRoleError(
                'Akses Ditolak: Role admin tidak diizinkan.'));
            await _authService.signOutUser();
            emit(NotLoggedIn());
          }
        } catch (error) {
          emit(LoginError(error.toString()));
          emit(NotLoggedIn());
        }
      }
    });

    on<LoggedOut>((event, emit) async {
      if (state is LoggedIn) {
        await _authService.signOutUser();
        emit(NotLoggedIn());
      }
    });

    on<IsLoggedIn>((event, emit) async {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String uid = user.uid;
        String role = await _authService.getUserRole(uid);
        if (role == 'user') {
          emit(LoggedIn(role));
        } else {
          emit(NotLoggedIn());
        }
      } else {
        emit(NotLoggedIn());
      }
    });
  }
}
