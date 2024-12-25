import 'package:hive/hive.dart';
part 'history_model.g.dart';

@HiveType(typeId: 1)
class HistoryModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String note;

  @HiveField(2)
  final String createdAt;
  @HiveField(3)
  final String completedAt;

  @HiveField(4)
  final bool status;

  HistoryModel({
    required this.id,
    required this.note,
    required this.status,
    required this.createdAt,
    required this.completedAt,
  });
}
