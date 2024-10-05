import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pengaduan_warga/data/complaint_service.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final ComplaintService complaintService;

  HistoryBloc({required this.complaintService}) : super(HistoryInitial()) {
    on<LoadHistory>(_onLoadHistory);
  }

  Future<void> _onLoadHistory(
      LoadHistory event, Emitter<HistoryState> emit) async {
    emit(HistoryLoading());
    try {
      final complaintsStream = complaintService
          .getUserComplaintsStream(FirebaseAuth.instance.currentUser!.uid);
      emit(HistoryLoaded(complaintsStream));
    } catch (error) {
      emit(HistoryError(error.toString()));
    }
  }
}
