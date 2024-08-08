part of 'complaint_form_bloc.dart';

@freezed
class ComplaintFormEvent with _$ComplaintFormEvent {
  const factory ComplaintFormEvent.submitComplaint({
    required String name,
    required String phone,
    required String rt,
    required String address,
    required String description,
    required XFile? image,
  }) = _SubmitComplaint;
}
