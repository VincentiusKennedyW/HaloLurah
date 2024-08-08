part of 'history_bloc.dart';

abstract class HistoryState {}

class HistoryInitial extends HistoryState {}

class HistoryLoading extends HistoryState {}

class HistoryLoaded extends HistoryState {
  final Stream<List<Map<String, dynamic>>> complaintsStream;
  HistoryLoaded(this.complaintsStream);
}

class HistoryError extends HistoryState {
  final String message;
  HistoryError(this.message);
}
