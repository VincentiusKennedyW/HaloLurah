import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pengaduan_warga/data/complaint_service.dart';

part 'complaint_form_event.dart';
part 'complaint_form_state.dart';

class ComplaintFormBloc extends Bloc<ComplaintFormEvent, ComplaintFormState> {
  final ComplaintService _complaintService;

  ComplaintFormBloc(this._complaintService) : super(ComplaintFormInitial()) {
    on<SubmitComplaint>((event, emit) async {
      emit(ComplaintFormLoading());
      try {
        await _complaintService.submitComplaint(
          name: event.name,
          phone: event.phone,
          rt: event.rt,
          address: event.address,
          description: event.description,
          image: event.image,
        );
        emit(ComplaintFormSuccess());
      } catch (e) {
        emit(ComplaintFormError(e.toString()));
      }
    });
  }
}
