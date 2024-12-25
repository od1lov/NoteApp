import 'package:hive/hive.dart';
import 'package:note_app/model/history_model.dart';
import 'package:note_app/model/note_model.dart';

class DbNote {
  final _dbName = "localDBNote";
  late final Box _box;

  DbNote() {
    _box = Hive.box(_dbName);
  }

  List<NoteModel> get loadNotes {
    final data = _box.values.cast<NoteModel>().toList();
    return data.map((item) => item).toList();
  }

  Future<void> addNote(NoteModel note) async {
    await _box.put(note.id, note);
  }

  Future<void> deleteNoteById(int id) async {
    try {
      if (_box.containsKey(id)) {
        await _box.delete(id);
        print('Note with ID $id deleted successfully.');
      } else {
        print('Note with ID $id not found.');
      }
    } catch (e) {
      print('Error deleting note: $e');
    }
  }

  Future<void> deleteHiveBox() async {
    try {
      if (Hive.isBoxOpen(_dbName)) {
        await _box.clear();
        print('All records deleted.');
      } else {
        print('Box not found or already deleted.');
      }
    } catch (e) {
      print('Error deleting box: $e');
    }
  }
}

class DbHistory {
  final _dbName = "localDBHistory";
  late final Box _box;

  DbHistory() {
    _box = Hive.box(_dbName);
  }

  List<HistoryModel> get loadHistories {
    final data = _box.values.cast<HistoryModel>().toList();
    return data.map((item) => item).toList();
  }

  Future<void> complete(HistoryModel history) async {
    await _box.put(history.id, history);
  }

  Future<void> deleteNoteById(String id) async {
    try {
      if (_box.containsKey(id)) {
        await _box.delete(id);
        print('Note with ID $id deleted successfully.');
      } else {
        print('Note with ID $id not found.');
      }
    } catch (e) {
      print('Error deleting note: $e');
    }
  }

  Future<void> deleteHiveBox() async {
    try {
      if (Hive.isBoxOpen(_dbName)) {
        await _box.clear();
        print('All records deleted.');
      } else {
        print('Box not found or already deleted.');
      }
    } catch (e) {
      print('Error deleting box: $e');
    }
  }
}
