part of 'complaint_form_bloc.dart';

abstract class ComplaintFormState extends Equatable {
  const ComplaintFormState();

  @override
  List<Object?> get props => [];
}

class ComplaintFormInitial extends ComplaintFormState {}

class ComplaintFormLoading extends ComplaintFormState {}

class ComplaintFormSuccess extends ComplaintFormState {}

class ComplaintFormError extends ComplaintFormState {
  final String message;

  const ComplaintFormError(this.message);

  @override
  List<Object?> get props => [message];
}
