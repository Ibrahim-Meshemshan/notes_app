part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}
final class NotesSuccess extends NotesState {
  final List<NotesModels> notes;

  NotesSuccess({required this.notes});
}
final class NotesFail extends NotesState {
  final String errorMessage;
  NotesFail({required this.errorMessage});
}
