// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pengaduan_warga/data/complaint_service.dart';

part 'complaint_form_bloc.freezed.dart';
part 'complaint_form_event.dart';
part 'complaint_form_state.dart';

class ComplaintFormBloc extends Bloc<ComplaintFormEvent, ComplaintFormState> {
  final ComplaintService _complaintService;

  ComplaintFormBloc(this._complaintService)
      : super(const ComplaintFormState.complaintFormInitial()) {
    on<_SubmitComplaint>((event, emit) async {
      emit(const ComplaintFormState.complaintFormLoading());
      try {
        await _complaintService.submitComplaint(
          name: event.name,
          phone: event.phone,
          rt: event.rt,
          address: event.address,
          description: event.description,
          image: event.image,
        );
        emit(const ComplaintFormState.complaintFormSuccess());
      } catch (e) {
        emit(ComplaintFormState.complaintFormError(e.toString()));
      }
    });
  }
}
