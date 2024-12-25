// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteState {
  List<NoteModel>? get notes => throw _privateConstructorUsedError;
  List<HistoryModel>? get histories => throw _privateConstructorUsedError;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
  @useResult
  $Res call({List<NoteModel>? notes, List<HistoryModel>? histories});
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
    Object? histories = freezed,
  }) {
    return _then(_value.copyWith(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>?,
      histories: freezed == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteStateImplCopyWith<$Res>
    implements $NoteStateCopyWith<$Res> {
  factory _$$NoteStateImplCopyWith(
          _$NoteStateImpl value, $Res Function(_$NoteStateImpl) then) =
      __$$NoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteModel>? notes, List<HistoryModel>? histories});
}

/// @nodoc
class __$$NoteStateImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateImpl>
    implements _$$NoteStateImplCopyWith<$Res> {
  __$$NoteStateImplCopyWithImpl(
      _$NoteStateImpl _value, $Res Function(_$NoteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
    Object? histories = freezed,
  }) {
    return _then(_$NoteStateImpl(
      notes: freezed == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>?,
      histories: freezed == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>?,
    ));
  }
}

/// @nodoc

class _$NoteStateImpl extends _NoteState {
  const _$NoteStateImpl(
      {final List<NoteModel>? notes = null,
      final List<HistoryModel>? histories = null})
      : _notes = notes,
        _histories = histories,
        super._();

  final List<NoteModel>? _notes;
  @override
  @JsonKey()
  List<NoteModel>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HistoryModel>? _histories;
  @override
  @JsonKey()
  List<HistoryModel>? get histories {
    final value = _histories;
    if (value == null) return null;
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NoteState(notes: $notes, histories: $histories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(_histories));

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      __$$NoteStateImplCopyWithImpl<_$NoteStateImpl>(this, _$identity);
}

abstract class _NoteState extends NoteState {
  const factory _NoteState(
      {final List<NoteModel>? notes,
      final List<HistoryModel>? histories}) = _$NoteStateImpl;
  const _NoteState._() : super._();

  @override
  List<NoteModel>? get notes;
  @override
  List<HistoryModel>? get histories;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel model) addNote,
    required TResult Function() getNotes,
    required TResult Function(int noteId, HistoryModel model) completeTask,
    required TResult Function(String noteId) deleteNoteFromHistory,
    required TResult Function() getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel model)? addNote,
    TResult? Function()? getNotes,
    TResult? Function(int noteId, HistoryModel model)? completeTask,
    TResult? Function(String noteId)? deleteNoteFromHistory,
    TResult? Function()? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel model)? addNote,
    TResult Function()? getNotes,
    TResult Function(int noteId, HistoryModel model)? completeTask,
    TResult Function(String noteId)? deleteNoteFromHistory,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_DeleteNoteFromHistory value)
        deleteNoteFromHistory,
    required TResult Function(_GetHistory value) getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult? Function(_GetHistory value)? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddNoteImplCopyWith<$Res> {
  factory _$$AddNoteImplCopyWith(
          _$AddNoteImpl value, $Res Function(_$AddNoteImpl) then) =
      __$$AddNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteModel model});
}

/// @nodoc
class __$$AddNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$AddNoteImpl>
    implements _$$AddNoteImplCopyWith<$Res> {
  __$$AddNoteImplCopyWithImpl(
      _$AddNoteImpl _value, $Res Function(_$AddNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddNoteImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as NoteModel,
    ));
  }
}

/// @nodoc

class _$AddNoteImpl implements _AddNote {
  const _$AddNoteImpl({required this.model});

  @override
  final NoteModel model;

  @override
  String toString() {
    return 'NoteEvent.addNote(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      __$$AddNoteImplCopyWithImpl<_$AddNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel model) addNote,
    required TResult Function() getNotes,
    required TResult Function(int noteId, HistoryModel model) completeTask,
    required TResult Function(String noteId) deleteNoteFromHistory,
    required TResult Function() getHistory,
  }) {
    return addNote(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel model)? addNote,
    TResult? Function()? getNotes,
    TResult? Function(int noteId, HistoryModel model)? completeTask,
    TResult? Function(String noteId)? deleteNoteFromHistory,
    TResult? Function()? getHistory,
  }) {
    return addNote?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel model)? addNote,
    TResult Function()? getNotes,
    TResult Function(int noteId, HistoryModel model)? completeTask,
    TResult Function(String noteId)? deleteNoteFromHistory,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_DeleteNoteFromHistory value)
        deleteNoteFromHistory,
    required TResult Function(_GetHistory value) getHistory,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult? Function(_GetHistory value)? getHistory,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class _AddNote implements NoteEvent {
  const factory _AddNote({required final NoteModel model}) = _$AddNoteImpl;

  NoteModel get model;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNotesImplCopyWith<$Res> {
  factory _$$GetNotesImplCopyWith(
          _$GetNotesImpl value, $Res Function(_$GetNotesImpl) then) =
      __$$GetNotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotesImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$GetNotesImpl>
    implements _$$GetNotesImplCopyWith<$Res> {
  __$$GetNotesImplCopyWithImpl(
      _$GetNotesImpl _value, $Res Function(_$GetNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNotesImpl implements _GetNotes {
  const _$GetNotesImpl();

  @override
  String toString() {
    return 'NoteEvent.getNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel model) addNote,
    required TResult Function() getNotes,
    required TResult Function(int noteId, HistoryModel model) completeTask,
    required TResult Function(String noteId) deleteNoteFromHistory,
    required TResult Function() getHistory,
  }) {
    return getNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel model)? addNote,
    TResult? Function()? getNotes,
    TResult? Function(int noteId, HistoryModel model)? completeTask,
    TResult? Function(String noteId)? deleteNoteFromHistory,
    TResult? Function()? getHistory,
  }) {
    return getNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel model)? addNote,
    TResult Function()? getNotes,
    TResult Function(int noteId, HistoryModel model)? completeTask,
    TResult Function(String noteId)? deleteNoteFromHistory,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_DeleteNoteFromHistory value)
        deleteNoteFromHistory,
    required TResult Function(_GetHistory value) getHistory,
  }) {
    return getNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult? Function(_GetHistory value)? getHistory,
  }) {
    return getNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes(this);
    }
    return orElse();
  }
}

abstract class _GetNotes implements NoteEvent {
  const factory _GetNotes() = _$GetNotesImpl;
}

/// @nodoc
abstract class _$$CompleteTaskImplCopyWith<$Res> {
  factory _$$CompleteTaskImplCopyWith(
          _$CompleteTaskImpl value, $Res Function(_$CompleteTaskImpl) then) =
      __$$CompleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int noteId, HistoryModel model});
}

/// @nodoc
class __$$CompleteTaskImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$CompleteTaskImpl>
    implements _$$CompleteTaskImplCopyWith<$Res> {
  __$$CompleteTaskImplCopyWithImpl(
      _$CompleteTaskImpl _value, $Res Function(_$CompleteTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
    Object? model = null,
  }) {
    return _then(_$CompleteTaskImpl(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as HistoryModel,
    ));
  }
}

/// @nodoc

class _$CompleteTaskImpl implements _CompleteTask {
  const _$CompleteTaskImpl({required this.noteId, required this.model});

  @override
  final int noteId;
  @override
  final HistoryModel model;

  @override
  String toString() {
    return 'NoteEvent.completeTask(noteId: $noteId, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTaskImpl &&
            (identical(other.noteId, noteId) || other.noteId == noteId) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteId, model);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      __$$CompleteTaskImplCopyWithImpl<_$CompleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel model) addNote,
    required TResult Function() getNotes,
    required TResult Function(int noteId, HistoryModel model) completeTask,
    required TResult Function(String noteId) deleteNoteFromHistory,
    required TResult Function() getHistory,
  }) {
    return completeTask(noteId, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel model)? addNote,
    TResult? Function()? getNotes,
    TResult? Function(int noteId, HistoryModel model)? completeTask,
    TResult? Function(String noteId)? deleteNoteFromHistory,
    TResult? Function()? getHistory,
  }) {
    return completeTask?.call(noteId, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel model)? addNote,
    TResult Function()? getNotes,
    TResult Function(int noteId, HistoryModel model)? completeTask,
    TResult Function(String noteId)? deleteNoteFromHistory,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(noteId, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_DeleteNoteFromHistory value)
        deleteNoteFromHistory,
    required TResult Function(_GetHistory value) getHistory,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult? Function(_GetHistory value)? getHistory,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class _CompleteTask implements NoteEvent {
  const factory _CompleteTask(
      {required final int noteId,
      required final HistoryModel model}) = _$CompleteTaskImpl;

  int get noteId;
  HistoryModel get model;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteFromHistoryImplCopyWith<$Res> {
  factory _$$DeleteNoteFromHistoryImplCopyWith(
          _$DeleteNoteFromHistoryImpl value,
          $Res Function(_$DeleteNoteFromHistoryImpl) then) =
      __$$DeleteNoteFromHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String noteId});
}

/// @nodoc
class __$$DeleteNoteFromHistoryImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$DeleteNoteFromHistoryImpl>
    implements _$$DeleteNoteFromHistoryImplCopyWith<$Res> {
  __$$DeleteNoteFromHistoryImplCopyWithImpl(_$DeleteNoteFromHistoryImpl _value,
      $Res Function(_$DeleteNoteFromHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
  }) {
    return _then(_$DeleteNoteFromHistoryImpl(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNoteFromHistoryImpl implements _DeleteNoteFromHistory {
  const _$DeleteNoteFromHistoryImpl({required this.noteId});

  @override
  final String noteId;

  @override
  String toString() {
    return 'NoteEvent.deleteNoteFromHistory(noteId: $noteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteFromHistoryImpl &&
            (identical(other.noteId, noteId) || other.noteId == noteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteId);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteFromHistoryImplCopyWith<_$DeleteNoteFromHistoryImpl>
      get copyWith => __$$DeleteNoteFromHistoryImplCopyWithImpl<
          _$DeleteNoteFromHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel model) addNote,
    required TResult Function() getNotes,
    required TResult Function(int noteId, HistoryModel model) completeTask,
    required TResult Function(String noteId) deleteNoteFromHistory,
    required TResult Function() getHistory,
  }) {
    return deleteNoteFromHistory(noteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel model)? addNote,
    TResult? Function()? getNotes,
    TResult? Function(int noteId, HistoryModel model)? completeTask,
    TResult? Function(String noteId)? deleteNoteFromHistory,
    TResult? Function()? getHistory,
  }) {
    return deleteNoteFromHistory?.call(noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel model)? addNote,
    TResult Function()? getNotes,
    TResult Function(int noteId, HistoryModel model)? completeTask,
    TResult Function(String noteId)? deleteNoteFromHistory,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (deleteNoteFromHistory != null) {
      return deleteNoteFromHistory(noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_DeleteNoteFromHistory value)
        deleteNoteFromHistory,
    required TResult Function(_GetHistory value) getHistory,
  }) {
    return deleteNoteFromHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult? Function(_GetHistory value)? getHistory,
  }) {
    return deleteNoteFromHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (deleteNoteFromHistory != null) {
      return deleteNoteFromHistory(this);
    }
    return orElse();
  }
}

abstract class _DeleteNoteFromHistory implements NoteEvent {
  const factory _DeleteNoteFromHistory({required final String noteId}) =
      _$DeleteNoteFromHistoryImpl;

  String get noteId;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNoteFromHistoryImplCopyWith<_$DeleteNoteFromHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHistoryImplCopyWith<$Res> {
  factory _$$GetHistoryImplCopyWith(
          _$GetHistoryImpl value, $Res Function(_$GetHistoryImpl) then) =
      __$$GetHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHistoryImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$GetHistoryImpl>
    implements _$$GetHistoryImplCopyWith<$Res> {
  __$$GetHistoryImplCopyWithImpl(
      _$GetHistoryImpl _value, $Res Function(_$GetHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetHistoryImpl implements _GetHistory {
  const _$GetHistoryImpl();

  @override
  String toString() {
    return 'NoteEvent.getHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel model) addNote,
    required TResult Function() getNotes,
    required TResult Function(int noteId, HistoryModel model) completeTask,
    required TResult Function(String noteId) deleteNoteFromHistory,
    required TResult Function() getHistory,
  }) {
    return getHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel model)? addNote,
    TResult? Function()? getNotes,
    TResult? Function(int noteId, HistoryModel model)? completeTask,
    TResult? Function(String noteId)? deleteNoteFromHistory,
    TResult? Function()? getHistory,
  }) {
    return getHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel model)? addNote,
    TResult Function()? getNotes,
    TResult Function(int noteId, HistoryModel model)? completeTask,
    TResult Function(String noteId)? deleteNoteFromHistory,
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_DeleteNoteFromHistory value)
        deleteNoteFromHistory,
    required TResult Function(_GetHistory value) getHistory,
  }) {
    return getHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult? Function(_GetHistory value)? getHistory,
  }) {
    return getHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_DeleteNoteFromHistory value)? deleteNoteFromHistory,
    TResult Function(_GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory(this);
    }
    return orElse();
  }
}

abstract class _GetHistory implements NoteEvent {
  const factory _GetHistory() = _$GetHistoryImpl;
}
