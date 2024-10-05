part of 'complaint_form_bloc.dart';

abstract class ComplaintFormEvent extends Equatable {
  const ComplaintFormEvent();

  @override
  List<Object?> get props => [];
}

class SubmitComplaint extends ComplaintFormEvent {
  final String name;
  final String phone;
  final String rt;
  final String address;
  final String description;
  final XFile? image;

  const SubmitComplaint({
    required this.name,
    required this.phone,
    required this.rt,
    required this.address,
    required this.description,
    this.image,
  });

  @override
  List<Object?> get props => [name, phone, rt, address, description, image];
}
