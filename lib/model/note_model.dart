import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  final String note;

  @HiveField(1)
  final int id;

  @HiveField(2)
  final String createdAt;

  NoteModel({
    required this.id,
    required this.note,
    required this.createdAt,
  });
}
