part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const NoteState._();

  const factory NoteState({
    @Default(null) List<NoteModel>? notes,
    @Default(null) List<HistoryModel>? histories,
  }) = _NoteState;
}
