import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:note_app/db/db_base.dart';
import 'package:note_app/db/db_note.dart';
import 'package:note_app/model/history_model.dart';
import 'package:note_app/model/note_model.dart';

part 'note_state.dart';
part 'note_event.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc() : super(const _NoteState()) {
    on<_AddNote>(_addNote);
    on<_GetNotes>(_getNotes);
    on<_CompleteTask>(_completeTask);
    on<_GetHistory>(_getHistory);
    on<_DeleteNoteFromHistory>(_deleteNoteFromHistory);
  }

  Future<void> _addNote(_AddNote event, Emitter<NoteState> emit) async {
    List<NoteModel> noteList = List.from(state.notes ?? []);
    noteList.add(event.model);
    await DbNote().addNote(event.model);
    emit(
      state.copyWith(
        notes: noteList,
      ),
    );
  }

  Future<void> _getNotes(_GetNotes event, Emitter<NoteState> emit) async {
    final notesDb = DbNote().loadNotes;
    emit(state.copyWith(
      notes: notesDb,
    ));
  }

  Future<void> _completeTask(
      _CompleteTask event, Emitter<NoteState> emit) async {
    List<HistoryModel> history = List.from(state.histories ?? []);
    List<NoteModel> notes = List.from(state.notes ?? []);
    history.add(event.model);
    DbNote().deleteNoteById(event.noteId);
    notes.removeWhere((b) => b.id == event.noteId);
    await DbHistory().complete(event.model);
    emit(
      state.copyWith(
        histories: history,
        notes: notes,
      ),
    );
  }

  Future<void> _deleteNoteFromHistory(
      _DeleteNoteFromHistory event, Emitter<NoteState> emit) async {
    List<HistoryModel> history = List.from(state.histories ?? []);
    DbHistory().deleteNoteById(event.noteId);
    history.removeWhere((b) => b.id == event.noteId);
    emit(
      state.copyWith(
        histories: history,
      ),
    );
  }

  Future<void> _getHistory(_GetHistory event, Emitter<NoteState> emit) async {
    final history = DbHistory().loadHistories;
    emit(state.copyWith(
      histories: history,
    ));
  }
}
