part of 'complaint_form_bloc.dart';

@freezed
class ComplaintFormState with _$ComplaintFormState {
  const factory ComplaintFormState.complaintFormInitial() =
      _ComplaintFormInitial;
  const factory ComplaintFormState.complaintFormLoading() =
      _ComplaintFormLoading;
  const factory ComplaintFormState.complaintFormSuccess() =
      _ComplaintFormSuccess;
  const factory ComplaintFormState.complaintFormError(String message) =
      _ComplaintFormError;
}
