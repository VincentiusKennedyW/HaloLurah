import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pengaduan_warga/data/auth_service.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthService _authService;

  RegisterBloc(this._authService) : super(RegisterInitial()) {
    on<Register>((event, emit) async {
      emit(RegisterLoading());
      try {
        await _authService.signUpUser(
          event.username,
          event.email,
          event.password,
          event.role,
        );
        emit(Registered());
      } catch (error) {
        emit(RegisterError(error.toString()));
      }
    });
  }
}
