import 'package:hive/hive.dart';

part 'notes_models.g.dart';

@HiveType(typeId: 0)
class NotesModels extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NotesModels({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
