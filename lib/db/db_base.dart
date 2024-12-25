import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/model/history_model.dart';
import 'package:note_app/model/note_model.dart';
import 'package:path_provider/path_provider.dart';

class DbBaseNote {
  static const _db = 'localDBNote';
  static late final Box _dbBox;

  static Future<Box> ensureInitialized() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
      Directory('${dir.path}/dir')
          .create(recursive: true)
          .then((Directory directory) {
        Hive.init(directory.path);
      });

      await Hive.initFlutter();
      Hive.registerAdapter(NoteModelAdapter());
      _dbBox = await Hive.openBox(_db);
      return _dbBox;
    } catch (e) {
      print("Error initializing Hive: $e");
      rethrow;
    }
  }

  Box get dbBox => _dbBox;
}

class DbBaseHistory {
  static const _db = 'localDBHistory';
  static late final Box _dbBox;

  static Future<Box> ensureInitialized() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
      Directory(dir.path).create(recursive: true).then((Directory directory) {
        Hive.init(directory.path);
      });

      await Hive.initFlutter();
      Hive.registerAdapter(HistoryModelAdapter());
      _dbBox = await Hive.openBox(_db);
      return _dbBox;
    } catch (e) {
      print("Error initializing Hive: $e");
      rethrow;
    }
  }

  Box get dbBox => _dbBox;
}
