part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.addNote({
    required NoteModel model,
  }) = _AddNote;
  const factory NoteEvent.getNotes() = _GetNotes;
  const factory NoteEvent.completeTask({
    required int noteId,
    required HistoryModel model,
  }) = _CompleteTask;

  const factory NoteEvent.deleteNoteFromHistory({
    required String noteId,
  }) = _DeleteNoteFromHistory;
  const factory NoteEvent.getHistory() = _GetHistory;
}
