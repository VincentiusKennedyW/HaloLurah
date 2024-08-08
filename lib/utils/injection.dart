import 'package:get_it/get_it.dart';
import 'package:pengaduan_warga/data/auth_service.dart';
import 'package:pengaduan_warga/data/complaint_service.dart';
import 'package:pengaduan_warga/presentation/bloc/complaint_form/complaint_form_bloc.dart';
import 'package:pengaduan_warga/presentation/bloc/history/history_bloc.dart';
import 'package:pengaduan_warga/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:pengaduan_warga/presentation/bloc/register_bloc/register_bloc.dart';

final locator = GetIt.instance;
void init() {
  locator.registerFactory(() => LoginBloc(locator()));
  locator.registerFactory(() => RegisterBloc(locator()));
  locator.registerFactory(() => ComplaintFormBloc(locator()));
  locator.registerFactory(() => HistoryBloc(complaintService: locator()));

  locator.registerLazySingleton<AuthService>(() => AuthService());
  locator.registerLazySingleton<ComplaintService>(() => ComplaintService());
}
